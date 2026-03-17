require ${@bb.utils.contains('DISTRO_FEATURES', 'virtualization', '${BPN}_virtualization.inc', '', d)}
require ${@bb.utils.contains('DISTRO_FEATURES', 'vmsep', '${BPN}_vmsep.inc', '', d)}

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://busybox.cfg"

EXTRA_OECONF += "CONFIG_INIT=y CONFIG_INIT_SYSV=y"
