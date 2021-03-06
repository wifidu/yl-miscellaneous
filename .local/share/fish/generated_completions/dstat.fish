# dstat
# Autogenerated from man page /usr/share/man/man1/dstat.1.gz
complete -c dstat -s c -l cpu --description 'enable cpu stats (system, user, idle, wait), for more CPU related stats also …'
complete -c dstat -s C --description 'include cpu0, cpu3 and total (when using -c/--cpu); use all to show all CPUs.'
complete -c dstat -s d -l disk --description 'enable disk stats (read, write), for more disk related stats look into the ot…'
complete -c dstat -s D --description 'include total and hda (when using -d/--disk).'
complete -c dstat -s g -l page --description 'enable page stats (page in, page out).'
complete -c dstat -s i -l int --description 'enable interrupt stats.'
complete -c dstat -s I --description 'include interrupt 5 and 10 (when using -i/--int).'
complete -c dstat -s l -l load --description 'enable load average stats (1 min, 5 mins, 15mins).'
complete -c dstat -s m -l mem --description 'enable memory stats (used, buffers, cache, free); for more memory related sta…'
complete -c dstat -s n -l net --description 'enable network stats (receive, send).'
complete -c dstat -s N --description 'include eth1 and total (when using -n/--net).'
complete -c dstat -s p -l proc --description 'enable process stats (runnable, uninterruptible, new).'
complete -c dstat -s r -l io --description 'enable I/O request stats (read, write requests).'
complete -c dstat -s s -l swap --description 'enable swap stats (used, free).'
complete -c dstat -s S --description 'include swap1 and total (when using -s/--swap).'
complete -c dstat -s t -l time --description 'enable time/date output.'
complete -c dstat -s T -l epoch --description 'enable time counter (seconds since epoch).'
complete -c dstat -s y -l sys --description 'enable system stats (interrupts, context switches).'
complete -c dstat -l aio --description 'enable aio stats (asynchronous I/O).'
complete -c dstat -l cpu-adv --description 'enable advanced cpu stats.'
complete -c dstat -l cpu-use --description 'enable only cpu usage stats.'
complete -c dstat -l fs -l filesystem --description 'enable filesystem stats (open files, inodes).'
complete -c dstat -l ipc --description 'enable ipc stats (message queue, semaphores, shared memory).'
complete -c dstat -l lock --description 'enable file lock stats (posix, flock, read, write).'
complete -c dstat -l mem-adv --description 'enable advanced memory stats.'
complete -c dstat -l raw --description 'enable raw stats (raw sockets).'
complete -c dstat -l socket --description 'enable socket stats (total, tcp, udp, raw, ip-fragments).'
complete -c dstat -l tcp --description 'enable tcp stats (listen, established, syn, time_wait, close).'
complete -c dstat -l udp --description 'enable udp stats (listen, active).'
complete -c dstat -l unix --description 'enable unix stats (datagram, stream, listen, active).'
complete -c dstat -l vm --description 'enable vm stats (hard pagefaults, soft pagefaults, allocated, free).'
complete -c dstat -l vm-adv --description 'enable advance vm stats (steal, scanK, scanD, pgoru, astll).'
complete -c dstat -l zones --description 'enable zoneinfo stats (d32F, d32H, normF, normH).'
complete -c dstat -l plugin-name --description 'enable (external) plugins by plugin name, see PLUGINS for options.'
complete -c dstat -l list --description 'list the internal and external plugin names.'
complete -c dstat -s a -l all --description 'equals -cdngy (default).'
complete -c dstat -s f -l full --description 'expand -C, -D, -I, -N and -S discovery lists.'
complete -c dstat -s v -l vmstat --description 'equals -pmgdsc -D total.'
complete -c dstat -l bits --description 'force bits for values expressed in bytes.'
complete -c dstat -l float --description 'force float values on screen (mutual exclusive with --integer).'
complete -c dstat -l integer --description 'force integer values on screen (mutual exclusive with --float).'
complete -c dstat -l bw -l blackonwhite --description 'change colors for white background terminal.'
complete -c dstat -l nocolor --description 'disable colors.'
complete -c dstat -l noheaders --description 'disable repetitive headers.'
complete -c dstat -l noupdate --description 'disable intermediate updates when delay > 1.'
complete -c dstat -l output --description 'write CSV output to file.'
complete -c dstat -l profile --description 'show profiling statistics when exiting dstat.'
complete -c dstat -l battery --description '.'
complete -c dstat -l battery-remain --description '.'
complete -c dstat -l cpufreq --description '.'
complete -c dstat -l dbus --description '.'
complete -c dstat -l disk-avgqu --description '.'
complete -c dstat -l disk-avgrq --description '.'
complete -c dstat -l disk-svctm --description '.'
complete -c dstat -l disk-tps --description '.'
complete -c dstat -l disk-util --description '.'
complete -c dstat -l disk-wait --description '.'
complete -c dstat -l dstat --description '.'
complete -c dstat -l dstat-cpu --description '.'
complete -c dstat -l dstat-ctxt --description '.'
complete -c dstat -l dstat-mem --description '.'
complete -c dstat -l fan --description '.'
complete -c dstat -l freespace --description '.'
complete -c dstat -l gpfs --description '.'
complete -c dstat -l gpfs-ops --description '.'
complete -c dstat -l helloworld --description '.'
complete -c dstat -l innodb-buffer --description '.'
complete -c dstat -l innodb-io --description '.'
complete -c dstat -l innodb-ops --description '.'
complete -c dstat -l lustre --description '.'
complete -c dstat -l md-status --description '.'
complete -c dstat -l memcache-hits --description '.'
complete -c dstat -l mysql5-cmds --description '.'
complete -c dstat -l mysql5-conn --description '.'
complete -c dstat -l mysql5-innodb --description '.'
complete -c dstat -l mysql5-io --description '.'
complete -c dstat -l mysql5-keys --description '.'
complete -c dstat -l mysql-io --description '.'
complete -c dstat -l mysql-keys --description '.'
complete -c dstat -l net-packets --description '.'
complete -c dstat -l nfs3 --description '.'
complete -c dstat -l nfs3-ops --description '.'
complete -c dstat -l nfsd3 --description '.'
complete -c dstat -l nfsd3-ops --description '.'
complete -c dstat -l nfsd4-ops --description '.'
complete -c dstat -l nfsstat4 --description '.'
complete -c dstat -l ntp --description '.'
complete -c dstat -l postfix --description '.'
complete -c dstat -l power --description '.'
complete -c dstat -l proc-count --description '.'
complete -c dstat -l qmail --description '.'
complete -c dstat -l redis --description '.'
complete -c dstat -l rpc --description '.'
complete -c dstat -l rpcd --description '.'
complete -c dstat -l sendmail --description '.'
complete -c dstat -l snmp-cpu --description '.'
complete -c dstat -l snmp-load --description '.'
complete -c dstat -l snmp-mem --description '.'
complete -c dstat -l snmp-net --description '.'
complete -c dstat -l snmp-net-err --description '.'
complete -c dstat -l snmp-sys --description '.'
complete -c dstat -l snooze --description '.'
complete -c dstat -l squid --description '.'
complete -c dstat -l test --description '.'
complete -c dstat -l thermal --description '.'
complete -c dstat -l top-bio --description '.'
complete -c dstat -l top-bio-adv --description '.'
complete -c dstat -l top-childwait --description '.'
complete -c dstat -l top-cpu --description '.'
complete -c dstat -l top-cpu-adv --description '.'
complete -c dstat -l top-cputime --description '.'
complete -c dstat -l top-cputime-avg --description '.'
complete -c dstat -l top-int --description '.'
complete -c dstat -l top-io --description '.'
complete -c dstat -l top-io-adv --description '.'
complete -c dstat -l top-latency --description '.'
complete -c dstat -l top-latency-avg --description '.'
complete -c dstat -l top-mem --description '.'
complete -c dstat -l top-oom --description '.'
complete -c dstat -l utmp --description '.'
complete -c dstat -l vm-cpu --description '.'
complete -c dstat -l vm-mem --description '.'
complete -c dstat -l vm-mem-adv --description '.'
complete -c dstat -l vmk-hba --description '.'
complete -c dstat -l vmk-int --description '.'
complete -c dstat -l vmk-nic --description '.'
complete -c dstat -l vz-cpu --description '.'
complete -c dstat -l vz-io --description '.'
complete -c dstat -l vz-ubc --description '.'
complete -c dstat -l wifi --description '.'
complete -c dstat -l zfs-arc --description '.'
complete -c dstat -l zfs-l2arc --description '.'
complete -c dstat -l zfs-zil --description '.'

