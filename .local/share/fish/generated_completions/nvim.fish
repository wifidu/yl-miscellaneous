# nvim
# Autogenerated from man page /usr/share/man/man1/nvim.1.gz
complete -c nvim -s t --description 'The file to edit and the initial cursor position depends on a tag, a sort of …'
complete -c nvim -s q --description 'QuickFix mode.  Display the first error in errorfile.'
complete -c nvim -l literal --description 'Interpret filenames literally, that is, do not expand wildcards.'
complete -c nvim -s e --description 'Ex mode.  See :help Ex-mode.'
complete -c nvim -s E --description 'Improved Ex mode.  See :help gQ.'
complete -c nvim -s s --description 'Silent mode.  Only takes effect if e or E is specified before it.'
complete -c nvim -s d --description 'Diff mode.  Show the difference between two to four files, similar to sdiff 1.'
complete -c nvim -s R --description 'Read-only mode.  Sets the option \'readonly\'.  Implies n.'
complete -c nvim -s Z --description 'Restricted mode.  Disable commands that make use of an external shell.'
complete -c nvim -s m --description 'Disable file modifications.  Unsets the option \'write\'.'
complete -c nvim -s M --description 'Disable file and buffer modifications.'
complete -c nvim -s b --description 'Binary mode.  See :help edit-binary.'
complete -c nvim -s l --description 'Lisp mode.  Sets the options \'lisp\' and \'showmatch\'.'
complete -c nvim -s A --description 'Arabic mode.  Sets the option \'arabic\'.'
complete -c nvim -s F --description 'Farsi mode.  Sets the options \'fkmap\' and \'rightleft\'.'
complete -c nvim -s H --description 'Hebrew mode.  Sets the options \'hkmap\' and \'rightleft\'.'
complete -c nvim -s V --description 'Verbose mode.'
complete -c nvim -s D --description 'Debugging mode.  Started when executing the first command from a script.'
complete -c nvim -s n --description 'Disable the use of swap files.  Sets the option \'updatecount\' to 0.'
complete -c nvim -s r --description 'Recovery mode.'
complete -c nvim -s L --description 'Alias for r.'
complete -c nvim -s u --description 'Use vimrc instead of the default of ~/. config/nvim/init. vim.'
complete -c nvim -s i --description 'Use shada instead of the default of ~/. local/share/nvim/shada/main. shada.'
complete -c nvim -l noplugin --description 'Skip loading plugins.  Implied by -u NONE.'
complete -c nvim -s o --description 'Open N windows stacked horizontally.'
complete -c nvim -s O --description 'Like o, but tile windows vertically.'
complete -c nvim -s p --description 'Like o, but for tab pages.'
complete -c nvim -s c --description 'Execute command after reading the first file.'
complete -c nvim -l cmd --description 'Like c, but execute command before processing any vimrc.'
complete -c nvim -s S --description 'Source session after the first file argument has been read.'
complete -c nvim -s w --description 'Append all typed characters to scriptout.'
complete -c nvim -s W --description 'Like w, but truncate scriptout.'
complete -c nvim -l startuptime --description 'During startup, append timing messages to file.'
complete -c nvim -l api-info --description 'Dump API metadata serialized to msgpack and exit.'
complete -c nvim -l embed --description 'Use standard input and standard output as a msgpack-rpc channel.'
complete -c nvim -l headless --description 'Do not start a user interface.'
complete -c nvim -s h --description 'Print usage information and exit.'
complete -c nvim -s v --description 'Print version information and exit.'

