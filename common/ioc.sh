#!/bin/bash
THISHOST=$(hostname -s)

if [ -x /etc/pathinit ]; then
    source /etc/pathinit
else
    export PYPS_ROOT=/cds/group/pcds/pyps
    export IOC_ROOT=/cds/group/pcds/epics/ioc
    export CAMRECORD_ROOT=/cds/group/pcds/controls/camrecord
    export IOC_DATA=/cds/data/iocData
    export IOC_COMMON=/cds/data/iocCommon
fi

if [ -x $IOC_COMMON/hosts/$THISHOST/startup.cmd ]; then
  $IOC_COMMON/hosts/$THISHOST/startup.cmd
  exit 0
fi

if [ -x $IOC_COMMON/rhel9-x86_64/common/startup.cmd ]; then
  $IOC_COMMON/rhel9-x86_64/common/startup.cmd
  exit 0
fi
