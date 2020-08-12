# dpkg-trigger
# Autogenerated from man page /usr/share/man/man1/dpkg-trigger.1.gz
complete -c dpkg-trigger -l admindir --description 'Change the location of the dpkg database.'
complete -c dpkg-trigger -l by-package --description 'Override trigger awaiter (normally set by dpkg through the DPKG_MAINTSCRIPT_P…'
complete -c dpkg-trigger -l no-await --description 'This option arranges that the calling package T (if any) need not await the p…'
complete -c dpkg-trigger -l await --description 'This option does the inverse of --no-await (since dpkg 1. 17. 21).'
complete -c dpkg-trigger -l check-supported --description 'Check if the running dpkg supports triggers (usually called from a postinst).'
complete -c dpkg-trigger -s '?' -l help --description 'Show the usage message and exit.'
complete -c dpkg-trigger -l version --description 'Show the version and exit.'
complete -c dpkg-trigger -l no-act --description 'Just test, do not actually change anything.'
