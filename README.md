## iocCommon arch-specific Startup Scripts

This repository contains scripts for configuring and starting up IOC servers.
The default branch (currently `rhel9-x86_64`) is the newest target architecture we support.
There are additional branches (e.g. `rhel7-x86_64`) for older architectures.

Each branch should be cloned to the lcls filesystem at `$IOC_COMMON`/`$ARCH`,
where `$ARCH` is the branch name and the name we've chose for the target architecture.

The scripts here are largely concerned with loading kernel modules and ioc manager
resources common to all or many IOC servers at LCLS.
