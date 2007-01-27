/*  dvdisaster: Additional error correction for optical media.
 *  Copyright (C) 2004-2007 Carsten Gnoerlich.
 *  Project home page: http://www.dvdisaster.com
 *  Email: carsten@dvdisaster.com  -or-  cgnoerlich@fsfe.org
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA,
 *  or direct your browser at http://www.gnu.org.
 */

#include "dvdisaster.h"

#include "scsi-layer.h"
#include "udf.h"

#ifdef SYS_NETBSD

#include <sys/device.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <sys/scsiio.h>
#include <util.h>


char* DefaultDevice()
{  DeviceHandle *dh;
   GDir *dir;
   char *disknames, *p;
   int dev_type, sysctl_mib[2];
   size_t sysctl_len;

   sysctl_mib[0] = CTL_HW;
   sysctl_mib[1] = HW_DISKNAMES;
   if (-1 == sysctl(sysctl_mib, 2, NULL, &sysctl_len, NULL, 0)) {
     PrintLog("Failed to get value of sysctl `hw.disknames'\n");
     return g_strdup("/dev/cdrom");
   }
   if (!(disknames = g_malloc(sysctl_len))) {
     PrintLog("Out of memory constructing scan device list\n");
     return g_strdup("/dev/cdrom");
   }
   if (-1 == sysctl(sysctl_mib, 2, disknames, &sysctl_len, NULL, 0)) {
     PrintLog("Failed to get value of sysctl `hw.disknames'\n");
     g_free(disknames);
     return g_strdup("/dev/cdrom");
   }

   dh = g_malloc(sizeof(DeviceHandle));

   for (p = strtok(disknames, " "); p; p = strtok(NULL, " "))
   {  
     if(!strncmp(p,"cd",2))
     { char buf[80];

       sprintf(buf,"/dev/r%sd", p); 

       memset(dh, 0, sizeof(DeviceHandle));
       dh->fd = open(buf, O_RDONLY | O_NONBLOCK);
       dh->device = buf;

       if(dh->fd < 0)   /* device not even present */
	 continue;

       dev_type = InquireDevice(dh, 1);
       close(dh->fd);

       if(dev_type != 5)  /* not a CD/DVD ROM */
	 continue;

       g_ptr_array_add(Closure->deviceNodes, g_strdup(buf));
       sprintf(buf, "%s (/dev/r%sd)", dh->devinfo, p);
       g_ptr_array_add(Closure->deviceNames, g_strdup(buf));
     }
   }

   g_free(dh);

   if(Closure->deviceNodes->len)
     return g_strdup(g_ptr_array_index(Closure->deviceNodes, 0));
   else
   {  PrintLog(_("No CD/DVD drives found.\n"
		  "No drives will be pre-selected.\n"));

      return g_strdup("/dev/cdrom");
   }
}

DeviceHandle* OpenDevice(char *device)
{  DeviceHandle *dh; 

   dh = g_malloc0(sizeof(DeviceHandle));
   dh->fd = open(device, O_RDONLY | O_NONBLOCK);

   if(dh->fd < 0)
   {  g_free(dh);
      Stop(_("Could not open %s: %s"),device, strerror(errno));
      return NULL;
   }

   dh->device = g_strdup(device);

   return dh;
}

void CloseDevice(DeviceHandle *dh)
{
  if(dh->fd)
    close(dh->fd);
  if(dh->device)
    g_free(dh->device);
  if(dh->rs02Header)
    g_free(dh->rs02Header);
  if(dh->mediumDescr) 
    g_free(dh->mediumDescr);
  if(dh->isoInfo)
    FreeIsoInfo(dh->isoInfo);
  if(dh->defects)
    FreeBitmap(dh->defects);
  g_free(dh);
}

int SendPacket(DeviceHandle *dh, unsigned char *cmd, int cdb_size, unsigned char *buf, int size, Sense *sense, int data_mode)
{  struct scsireq sc;
   int rc;

   memset(&sc, 0, sizeof(sc));
   memcpy(sc.cmd, cmd, cdb_size);
   sc.cmdlen = cdb_size;
   sc.databuf = (char *)buf;
   sc.datalen = size;
   sc.senselen = 24;			/* what */
   sc.timeout = 60000;			/* linux uses 5000 = 5 * HZ */

   switch(data_mode)
   {  case DATA_READ:
        sc.flags = SCCMD_READ;
	break;
      default:
	Stop(_("illegal data_mode: %d"),data_mode);
   }

   rc = ioctl(dh->fd, SCIOCCOMMAND, &sc);
   if (rc < 0)
      return rc;
   memcpy(sense, sc.sense, sc.senselen_used);
   return 0;
}
#endif /* SYS_NETBSD */
