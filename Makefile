# $Id: Makefile,v 1.804 2003/12/25 13:28:50 jmmv Exp $
# $NetBSD: Makefile,v 1.804 2003/12/25 13:28:50 jmmv Exp $

COMMENT=	WIP pkgsrc packages

SUBDIR+=	4stAttack
SUBDIR+=	MozillaFirebird-bin-xft2
SUBDIR+=	NeoPop-SDL
SUBDIR+=	PPower4
SUBDIR+=	PyBabelFish
SUBDIR+=	Pythonol
SUBDIR+=	Radiator
SUBDIR+=	Radiator-all
SUBDIR+=	Redland-rdf
SUBDIR+=	WEPCrack
SUBDIR+=	XFree86
SUBDIR+=	XFree86-clients
SUBDIR+=	XFree86-docs
SUBDIR+=	XFree86-fonts100dpi
SUBDIR+=	XFree86-fonts75dpi
SUBDIR+=	XFree86-fontsCyrillic
SUBDIR+=	XFree86-fontsEncodings
SUBDIR+=	XFree86-fontsMisc
SUBDIR+=	XFree86-fontsScalable
SUBDIR+=	XFree86-fontserver
SUBDIR+=	XFree86-libs
SUBDIR+=	XFree86-man
SUBDIR+=	XFree86-server
SUBDIR+=	abuse_sdl
SUBDIR+=	acid
SUBDIR+=	adodb
SUBDIR+=	adtool
SUBDIR+=	afterstep2
SUBDIR+=	aget
SUBDIR+=	allegro
SUBDIR+=	amap
SUBDIR+=	amavisd-new
SUBDIR+=	amsn
SUBDIR+=	aolserver
SUBDIR+=	ap-auth-mysql
SUBDIR+=	ap-bunzip2
SUBDIR+=	ap-frontpage
SUBDIR+=	ap-macro
SUBDIR+=	ap-ometer
SUBDIR+=	ap2-auth-mysql
SUBDIR+=	ap2-limitipconn
SUBDIR+=	ap2-macro
SUBDIR+=	ap2-python
SUBDIR+=	ap2-xslt
SUBDIR+=	apotheke
SUBDIR+=	argouml
SUBDIR+=	armagetron
SUBDIR+=	arping
SUBDIR+=	asfrecorder
SUBDIR+=	asterisk
SUBDIR+=	atasm
SUBDIR+=	autoproject
SUBDIR+=	avida2
SUBDIR+=	axe
SUBDIR+=	barnyard
SUBDIR+=	bastard
SUBDIR+=	beast
SUBDIR+=	beep-media-player
SUBDIR+=	billardgl
SUBDIR+=	bin86
SUBDIR+=	bitchbot
SUBDIR+=	blassic
SUBDIR+=	bnr2
SUBDIR+=	boost-base
SUBDIR+=	boost-thread
SUBDIR+=	bub-n-bros
SUBDIR+=	bugzilla
SUBDIR+=	busybox
SUBDIR+=	bwidget
SUBDIR+=	byacc
SUBDIR+=	c-news
SUBDIR+=	cairo
SUBDIR+=	cal3d
SUBDIR+=	cal3d_cally
SUBDIR+=	cawf
SUBDIR+=	ccrypt
SUBDIR+=	ccze
SUBDIR+=	cdl3
SUBDIR+=	cdpr
SUBDIR+=	cgdb
SUBDIR+=	cgic
SUBDIR+=	cherokee
SUBDIR+=	chksniff
SUBDIR+=	chmlib
SUBDIR+=	cjk-latex
SUBDIR+=	cjk-latex-chinese
SUBDIR+=	cjk-latex-japanese
SUBDIR+=	cjk-latex-korean
SUBDIR+=	cmatrix
SUBDIR+=	compositeext
SUBDIR+=	cops
SUBDIR+=	copytape
SUBDIR+=	cvsd
SUBDIR+=	cyrus-imapd22
SUBDIR+=	d2x
SUBDIR+=	d4x
SUBDIR+=	damageext
SUBDIR+=	dancer-ircd
SUBDIR+=	darcnes-svgalib
SUBDIR+=	darkice
SUBDIR+=	dasm
SUBDIR+=	dbf
SUBDIR+=	dccserver
SUBDIR+=	dfbpoint
SUBDIR+=	dfbsee
SUBDIR+=	dfm
SUBDIR+=	directfb
SUBDIR+=	directory-administrator
SUBDIR+=	distella
SUBDIR+=	dmidecode
SUBDIR+=	dnsmasq
SUBDIR+=	docbook-xsl-ko
SUBDIR+=	dpkg
SUBDIR+=	drweb
SUBDIR+=	drweb-clients-shared
SUBDIR+=	drweb-dc
SUBDIR+=	drweb-smf
SUBDIR+=	drwright
SUBDIR+=	dumb
SUBDIR+=	dzt
SUBDIR+=	e2fsprogs
SUBDIR+=	eag
SUBDIR+=	ed
SUBDIR+=	eic
SUBDIR+=	elvis
SUBDIR+=	elvis-x11
SUBDIR+=	emirror
SUBDIR+=	entropy
SUBDIR+=	ezbounce
SUBDIR+=	fakenes
SUBDIR+=	festival-gaim
SUBDIR+=	fixesext
SUBDIR+=	florist
SUBDIR+=	fluxconf
SUBDIR+=	fluxspace
SUBDIR+=	foomatic-filters
SUBDIR+=	foomatic-filters-cups
SUBDIR+=	fragroute
SUBDIR+=	freeglut
SUBDIR+=	freenet-tools
SUBDIR+=	frontpage
SUBDIR+=	fsv
SUBDIR+=	fwbuilder
SUBDIR+=	galib
SUBDIR+=	gcc3-ada-devel
SUBDIR+=	gcc3-c++-devel
SUBDIR+=	gcc3-c-devel
#SUBDIR+=	gcl		# see TODO
#SUBDIR+=	gcl-nox11	# see gcl/TODO
SUBDIR+=	gcompris
SUBDIR+=	gdbada
SUBDIR+=	geeklog
SUBDIR+=	gg2
SUBDIR+=	ghostpcl
SUBDIR+=	gift
SUBDIR+=	giftcurs
SUBDIR+=	giftui
SUBDIR+=	gimp-current
SUBDIR+=	gkrellm-launch
SUBDIR+=	gkrellm-reminder
SUBDIR+=	gkrellm2
SUBDIR+=	gkrellm2-flynn
SUBDIR+=	gkrellm2-launch
SUBDIR+=	gkrellm2-leds
SUBDIR+=	gkrellm2-multiping
SUBDIR+=	gkrellm2-server
SUBDIR+=	gkrellm2-share
SUBDIR+=	gkrellm2-snmp
SUBDIR+=	gkrellm2-volume
SUBDIR+=	gkrellm2-weather
SUBDIR+=	gkrellm2-xmms
SUBDIR+=	gl-117
SUBDIR+=	glaxium
SUBDIR+=	glide3
SUBDIR+=	glkterm
SUBDIR+=	glulxe
SUBDIR+=	gnats4
SUBDIR+=	gnome-speech
SUBDIR+=	gnome2-extras
SUBDIR+=	gnome2-pkgview
SUBDIR+=	gnome2-system-monitor
SUBDIR+=	gnome2-themes-extra
SUBDIR+=	gnomeicu
SUBDIR+=	gnucash-docs
SUBDIR+=	gnumeric
SUBDIR+=	gnunet
SUBDIR+=	gotmail
SUBDIR+=	gov2
SUBDIR+=	gramps
SUBDIR+=	grip
SUBDIR+=	gstreamer-player
SUBDIR+=	gtick
SUBDIR+=	gtk-engines-thinice
SUBDIR+=	gtk-sharp
SUBDIR+=	gtk-theme-switch
SUBDIR+=	gtk2-engines-bluecurve
SUBDIR+=	gtk2-engines-dwerg
SUBDIR+=	gtk2-engines-flat
SUBDIR+=	gtk2-engines-galaxy
SUBDIR+=	gtk2-engines-industrial
SUBDIR+=	gtk2-engines-lighthouseblue
SUBDIR+=	gtk2-engines-magichicken
SUBDIR+=	gtk2-engines-mist
SUBDIR+=	gtk2-engines-smooth
SUBDIR+=	gtk2-theme-pack
SUBDIR+=	gtkada
SUBDIR+=	gtkglk
SUBDIR+=	gtkmagnetic
SUBDIR+=	gtkpod
SUBDIR+=	gurlchecker
SUBDIR+=	gwc
SUBDIR+=	hasciicam
SUBDIR+=	hashcash
SUBDIR+=	heimdal
SUBDIR+=	honeyd
SUBDIR+=	honeyd-arpd
SUBDIR+=	ht
SUBDIR+=	ht2html
SUBDIR+=	html2latex
SUBDIR+=	httrack
SUBDIR+=	hugo
SUBDIR+=	hydra
SUBDIR+=	hydrogen
SUBDIR+=	icc
SUBDIR+=	ices
SUBDIR+=	icmpchat
SUBDIR+=	idled
SUBDIR+=	igal
SUBDIR+=	iip
SUBDIR+=	iisemulator
SUBDIR+=	ike-scan
SUBDIR+=	ilohamail
SUBDIR+=	imake
SUBDIR+=	imhangul
SUBDIR+=	imhangul_status_applet
SUBDIR+=	ion-devel
SUBDIR+=	ion-dock
SUBDIR+=	isc-dhclient
SUBDIR+=	isc-dhcpd
SUBDIR+=	ish
SUBDIR+=	jabberd2
SUBDIR+=	jakarta-log4j
SUBDIR+=	javascript-guide
SUBDIR+=	javascript-reference
SUBDIR+=	jdk12
SUBDIR+=	jdk12-openjit
SUBDIR+=	jdk13
SUBDIR+=	jdk13-openjit
SUBDIR+=	jigdo
SUBDIR+=	kadu
SUBDIR+=	kaffe-nox11
SUBDIR+=	kannel-gateway
SUBDIR+=	kapital
SUBDIR+=	kgpg
SUBDIR+=	kmplayer
SUBDIR+=	koffice-i18n-de
SUBDIR+=	koffice-i18n-es
SUBDIR+=	konversation
SUBDIR+=	korelib
SUBDIR+=	kvirc
SUBDIR+=	kylix-openedition
SUBDIR+=	l2tpd
SUBDIR+=	lammpi
SUBDIR+=	lash
SUBDIR+=	lbdb
SUBDIR+=	ldapbrowser
SUBDIR+=	ldapdns
SUBDIR+=	lde
SUBDIR+=	leo
SUBDIR+=	libICE
SUBDIR+=	libSM
SUBDIR+=	libX11
SUBDIR+=	libXau
SUBDIR+=	libXcomposite
SUBDIR+=	libXcursor
SUBDIR+=	libXdamage
SUBDIR+=	libXext
SUBDIR+=	libXfixes
SUBDIR+=	libXfont
SUBDIR+=	libXi
SUBDIR+=	libXrender
SUBDIR+=	libXres
SUBDIR+=	libXt
SUBDIR+=	libXv
SUBDIR+=	libdialog
SUBDIR+=	libdisasm
SUBDIR+=	libfwbuilder
SUBDIR+=	libgringotts
SUBDIR+=	libhydrogen
SUBDIR+=	libic
SUBDIR+=	libmodplug
SUBDIR+=	libneural
SUBDIR+=	libogg-nightly
SUBDIR+=	libol
SUBDIR+=	libpixregion
SUBDIR+=	libprelude
SUBDIR+=	libshout
SUBDIR+=	libstatgrab
SUBDIR+=	libtlen
SUBDIR+=	libvc
SUBDIR+=	libvorbis-nightly
SUBDIR+=	libwpd
SUBDIR+=	libxml++
SUBDIR+=	liferea
SUBDIR+=	lilo
SUBDIR+=	lilypond20
SUBDIR+=	lincvs
SUBDIR+=	links-hacked
SUBDIR+=	linux-ch
SUBDIR+=	linux-chprofessional
SUBDIR+=	linux-kbd
SUBDIR+=	linux-makedev
SUBDIR+=	linux-modutils
SUBDIR+=	linux-nfs-utils
SUBDIR+=	liquidwar
SUBDIR+=	lletters
SUBDIR+=	lmarbles
SUBDIR+=	lsdvd
SUBDIR+=	mailfilter
SUBDIR+=	man-db
SUBDIR+=	map-browse
SUBDIR+=	mathomatic
#SUBDIR+=	maxima		# see TODO
SUBDIR+=	mc
SUBDIR+=	mcats
SUBDIR+=	mcats-iodbc
SUBDIR+=	memtester
SUBDIR+=	metatheme
SUBDIR+=	mftrace
SUBDIR+=	mhonarc
SUBDIR+=	ming
SUBDIR+=	mingw
SUBDIR+=	mingw-binutils
SUBDIR+=	mingw-gcc
SUBDIR+=	mingw-runtime-bin
SUBDIR+=	mingw-w32api-bin
SUBDIR+=	mit-krb5
SUBDIR+=	mixer.tk
SUBDIR+=	mixmaster
#SUBDIR+=	mk 		# not a package
SUBDIR+=	mkdep
SUBDIR+=	mlview
SUBDIR+=	monkey-bubble
SUBDIR+=	mopac
SUBDIR+=	mplusfonts
SUBDIR+=	mtf
SUBDIR+=	muse
SUBDIR+=	mutella
SUBDIR+=	mutt-devel
SUBDIR+=	mutt-vc-query
SUBDIR+=	mythtv
SUBDIR+=	nagios-base
SUBDIR+=	nagios-plugin-ldap
SUBDIR+=	nagios-plugin-mysql
SUBDIR+=	nagios-plugin-pgsql
SUBDIR+=	nagios-plugin-snmp
SUBDIR+=	nagios-plugins
SUBDIR+=	natali
SUBDIR+=	nautilus-cd-burner
SUBDIR+=	nautilus-media
SUBDIR+=	navigatrix
SUBDIR+=	ncps
SUBDIR+=	nehe-opengl-tutorials
SUBDIR+=	net-tools
SUBDIR+=	netbeans-ide
SUBDIR+=	netkit-base
SUBDIR+=	newsx
SUBDIR+=	noip
SUBDIR+=	nuppelvideo
SUBDIR+=	oinkmaster
SUBDIR+=	opax
SUBDIR+=	openvpn
SUBDIR+=	p5-CDDB
SUBDIR+=	p5-Chart
SUBDIR+=	p5-Class-Factory-Util
SUBDIR+=	p5-Class-MethodMaker
SUBDIR+=	p5-Class-Singleton
SUBDIR+=	p5-DBI-Shell
SUBDIR+=	p5-Data-TemporaryBag
SUBDIR+=	p5-DateTime
SUBDIR+=	p5-DateTime-Event-Cron
SUBDIR+=	p5-DateTime-LeapSecond
SUBDIR+=	p5-DateTime-Set
SUBDIR+=	p5-DateTime-TimeZone
SUBDIR+=	p5-ExtUtils-Depends
SUBDIR+=	p5-ExtUtils-PkgConfig
SUBDIR+=	p5-File-Tail
SUBDIR+=	p5-GeoIP
SUBDIR+=	p5-Glib2
SUBDIR+=	p5-GnuPG-Interface
SUBDIR+=	p5-HTML-Latex
SUBDIR+=	p5-HTTP-GHTTP
SUBDIR+=	p5-IO-Tee
SUBDIR+=	p5-Net-Pcap
SUBDIR+=	p5-Parallel-ForkManager
SUBDIR+=	p5-SWF-File
SUBDIR+=	p5-Scalar-List-Utils
SUBDIR+=	p5-Set-Crontab
SUBDIR+=	p5-Set-Infinite
SUBDIR+=	p5-String-Approx
SUBDIR+=	p5-Text-Reform
SUBDIR+=	p5-Tk-TableMatrix
SUBDIR+=	p5-gtk2
SUBDIR+=	palm-db-tools
SUBDIR+=	par2
SUBDIR+=	passepartout
SUBDIR+=	patchutils
SUBDIR+=	pdb2ldif
SUBDIR+=	pdns
SUBDIR+=	perl58
SUBDIR+=	perl59
SUBDIR+=	perltidy
SUBDIR+=	pgadmin3
SUBDIR+=	pgp6
SUBDIR+=	pgpenvelope
#SUBDIR+=	php-doc			# not a package
SUBDIR+=	php-doc-ar
SUBDIR+=	php-doc-br
SUBDIR+=	php-doc-de
SUBDIR+=	php-doc-en
SUBDIR+=	php-doc-es
SUBDIR+=	php-doc-fi
SUBDIR+=	php-doc-fr
SUBDIR+=	php-doc-hk
SUBDIR+=	php-doc-hu
SUBDIR+=	php-doc-it
SUBDIR+=	php-doc-ja
SUBDIR+=	php-doc-kr
SUBDIR+=	php-doc-nl
SUBDIR+=	php-doc-ro
SUBDIR+=	php-doc-ru
SUBDIR+=	php-doc-sk
SUBDIR+=	php-doc-sl
SUBDIR+=	php-doc-sv
SUBDIR+=	php-jpgraph
SUBDIR+=	php4-mysql4
SUBDIR+=	picasm
SUBDIR+=	picprog
SUBDIR+=	pinball
SUBDIR+=	plugger
SUBDIR+=	pnet
SUBDIR+=	pnetC
SUBDIR+=	pnetlib
SUBDIR+=	poedit
SUBDIR+=	pointless
SUBDIR+=	portaudio
SUBDIR+=	portmap
SUBDIR+=	ppp
SUBDIR+=	prelude-lml
SUBDIR+=	prelude-manager
SUBDIR+=	prelude-manager-mysql
SUBDIR+=	prelude-manager-pgsql
SUBDIR+=	prelude-nids
SUBDIR+=	premake
SUBDIR+=	procps
SUBDIR+=	prtunnel
SUBDIR+=	psh
SUBDIR+=	pts
SUBDIR+=	pxlib
SUBDIR+=	pxview
SUBDIR+=	py-CVSTools
SUBDIR+=	py-EditObj
SUBDIR+=	py-Genetic
SUBDIR+=	py-Impacket
SUBDIR+=	py-InlineEgg
SUBDIR+=	py-MayaVi
SUBDIR+=	py-OpenGL
SUBDIR+=	py-OpenSSL
SUBDIR+=	py-Py2Play
SUBDIR+=	py-PyPE
SUBDIR+=	py-PythonDirector
SUBDIR+=	py-Quotient
SUBDIR+=	py-RXP
SUBDIR+=	py-Reverend
SUBDIR+=	py-SciPy
SUBDIR+=	py-Soya
SUBDIR+=	py-TTFQuery
SUBDIR+=	py-albatross
SUBDIR+=	py-ao
SUBDIR+=	py-biggles
SUBDIR+=	py-bsddb
SUBDIR+=	py-buildbot
SUBDIR+=	py-cjkcodecs
SUBDIR+=	py-dateutil
SUBDIR+=	py-elementtree
SUBDIR+=	py-f2py2e
SUBDIR+=	py-fastaudio
SUBDIR+=	py-fonttools
SUBDIR+=	py-game
SUBDIR+=	py-gdick
SUBDIR+=	py-generateDS
SUBDIR+=	py-gettext-tools
SUBDIR+=	py-gnosis-utils
SUBDIR+=	py-ipython
SUBDIR+=	py-libpcap
SUBDIR+=	py-mad
SUBDIR+=	py-matplotlib
SUBDIR+=	py-ming
SUBDIR+=	py-oak
SUBDIR+=	py-ogg
SUBDIR+=	py-pcapy
SUBDIR+=	py-scapy
SUBDIR+=	py-scipy_distutils
SUBDIR+=	py-spambayes
SUBDIR+=	py-spark
SUBDIR+=	py-speex
SUBDIR+=	py-twisted
SUBDIR+=	py-twisted-docs
SUBDIR+=	py-vorbis
SUBDIR+=	py-vtkmodule
SUBDIR+=	py-weave
SUBDIR+=	py-willow
SUBDIR+=	pynfo
SUBDIR+=	pysite
SUBDIR+=	pywm
SUBDIR+=	q3-urbanterror
SUBDIR+=	quagga-devel
SUBDIR+=	qico
SUBDIR+=	qinx
SUBDIR+=	qn-x11
SUBDIR+=	rc.subr
SUBDIR+=	rcorder
SUBDIR+=	regexxer
#SUBDIR+=	rekall # doesn't compile yet; see TODO
SUBDIR+=	resourceext
SUBDIR+=	rlpr
SUBDIR+=	rolo
SUBDIR+=	rosegarden-current
SUBDIR+=	rox-gtk2
SUBDIR+=	rudiments
SUBDIR+=	samba3
SUBDIR+=	scew
SUBDIR+=	scite
SUBDIR+=	scm
SUBDIR+=	scons
SUBDIR+=	scponly
SUBDIR+=	send-pr
SUBDIR+=	sgmltools-lite
SUBDIR+=	shadow
SUBDIR+=	shared-mime-info
SUBDIR+=	shoutcast
SUBDIR+=	sks
SUBDIR+=	slim
SUBDIR+=	slocate
SUBDIR+=	slrn-pl
SUBDIR+=	slune
SUBDIR+=	smtprc
SUBDIR+=	smtprc-gui
SUBDIR+=	smtpscan
SUBDIR+=	snownews
SUBDIR+=	socat
SUBDIR+=	speedx
SUBDIR+=	sqlrelay
SUBDIR+=	sredird
SUBDIR+=	srvx
SUBDIR+=	steghide
SUBDIR+=	stellarium
SUBDIR+=	strace
SUBDIR+=	streamripper
SUBDIR+=	stunnel3
SUBDIR+=	sudoscript
SUBDIR+=	superkaramba
SUBDIR+=	svgalib
SUBDIR+=	sysklogd
SUBDIR+=	syslog-ng
SUBDIR+=	sysvinit
SUBDIR+=	tcc
SUBDIR+=	tcllib
SUBDIR+=	tendra
SUBDIR+=	tetrinet
SUBDIR+=	tetrinetx
SUBDIR+=	tex-foiltex
SUBDIR+=	tex-hlatex
SUBDIR+=	tex-passivetex
SUBDIR+=	tex-xmltex
SUBDIR+=	thaixfonts
SUBDIR+=	thcrut
SUBDIR+=	theme-gtk-bluecurve
SUBDIR+=	theora-nightly
SUBDIR+=	thunderbird
SUBDIR+=	thy
SUBDIR+=	tinc
SUBDIR+=	tinylogin
SUBDIR+=	tkabber
SUBDIR+=	tleenx2
SUBDIR+=	tls
SUBDIR+=	toppler
SUBDIR+=	totem
SUBDIR+=	treecc
SUBDIR+=	tsm
SUBDIR+=	tutos
SUBDIR+=	tuxnes
SUBDIR+=	tuxtype2
SUBDIR+=	typhoon
SUBDIR+=	ubs
SUBDIR+=	uclibc
SUBDIR+=	udhcp
SUBDIR+=	umix
SUBDIR+=	unmo3
SUBDIR+=	unrealircd
SUBDIR+=	unrealtournament-server
SUBDIR+=	upx
SUBDIR+=	util-linux
SUBDIR+=	vcdgear
SUBDIR+=	viewcvs
SUBDIR+=	vixie-cron
SUBDIR+=	vlc
SUBDIR+=	vm-pop3d
SUBDIR+=	vmac
SUBDIR+=	vmsbackup
SUBDIR+=	vtk
SUBDIR+=	vtk-data
SUBDIR+=	vtk-docs
SUBDIR+=	vtk-python
SUBDIR+=	weewm
SUBDIR+=	wmclockmon
SUBDIR+=	wmitime
SUBDIR+=	wmnetload
SUBDIR+=	words
SUBDIR+=	wxGTK2
SUBDIR+=	wxhugo
SUBDIR+=	xawtv
SUBDIR+=	xbase
SUBDIR+=	xbelmark
SUBDIR+=	xbsql
SUBDIR+=	xchm
SUBDIR+=	xevil
SUBDIR+=	xextensions
SUBDIR+=	xmail
SUBDIR+=	xml2doc
SUBDIR+=	xmms-dumb
SUBDIR+=	xmms-modplug
SUBDIR+=	xmms-pitch
SUBDIR+=	xmmsctrl
SUBDIR+=	xpde
SUBDIR+=	xplore
SUBDIR+=	xproto
SUBDIR+=	xscribble-fs
SUBDIR+=	xsh
SUBDIR+=	xtrans
SUBDIR+=	xwpe
SUBDIR+=	yafray
SUBDIR+=	yp-tools
SUBDIR+=	ypbind-mt
SUBDIR+=	ypserv
SUBDIR+=	zebra-pj
SUBDIR+=	zinf

${.CURDIR}/PKGDB:
	@${RM} -f ${.CURDIR}/PKGDB
	@${ECHO_MSG} "Extracting complete dependency database.  This may take a while..."
	@DB=${.CURDIR}/PKGDB ; \
	PKGSRCDIR=${.CURDIR} ; \
	npkg=1; \
	list=`${GREP} '^[[:space:]]*'SUBDIR Makefile | ${SED} 's,.*=[[:space:]]*,,'` ; \
	for pkgdir in $$list ; do \
		if [ ! -d $$pkgdir ]; then  \
			echo " " ; \
			echo "WARNING:  the package directory $$pkgdir is listed in" > /dev/stderr ; \
			echo $$pkgdir | ${SED} 's;/.*;/Makefile;g' > /dev/stderr ; \
			echo "but the directory does not exist.  Please fix this!" > /dev/stderr ; \
		else \
			cd $$pkgdir ; \
			l=`${MAKE} print-summary-data`  ; \
			if [ $$? != 0 ]; then \
				echo "WARNING (printdepends):  the package in $$pkgdir had problem with" \
					> /dev/stderr ; \
				echo "    ${MAKE} print-summary-data" > /dev/stderr ; \
				echo "    database information for this package" > /dev/stderr ; \
				echo "    will be dropped." > /dev/stderr ; \
				${MAKE} print-summary-data  2>&1 > /dev/stderr ; \
			else \
				echo "$$l" >> $$DB ; \
			fi ; \
		fi ; \
		echo -n "." ; \
		if [ `${EXPR} $$npkg % 100 = 0` -eq 1 ]; then \
			echo " " ; \
			echo "$$npkg" ; \
		fi ; \
		npkg=`${EXPR} $$npkg + 1` ; \
		cd $$PKGSRCDIR  ; \
	done

.PHONY: index
index: ${.CURDIR}/INDEX

${.CURDIR}/INDEX: ${.CURDIR}/PKGDB
	@${RM} -f ${.CURDIR}/INDEX
	@${AWK} -f ../mk/scripts/genindex.awk PKGSRCDIR=${.CURDIR} SORT=${SORT} ${.CURDIR}/PKGDB
	@${RM} -f ${.CURDIR}/PKGDB
	@${GREP} -v '||||||||||$$' ${.CURDIR}/INDEX > ${.CURDIR}/INDEX.tmp && \
		${MV} ${.CURDIR}/INDEX.tmp ${.CURDIR}/INDEX

.include "../mk/bsd.pkg.subdir.mk"
