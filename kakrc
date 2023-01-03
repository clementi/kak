hook global InsertChar \t %{ exec -draft -itersel h@ }
set global tabstop 4
set global indentwidth 4

hook global WinCreate ^[^*]+$ %{editorconfig-load}
hook global WinCreate ^[^*]+$ %{add-highlighter global/ number-lines}
hook global WinCreate ^[^*]+$ %{add-highlighter global/ show-matching}
# hook global WinCreate ^[^*]+$ %{add-highlighter global/ wrap}

map global normal '#' ': comment-line<ret>' -docstring 'comment line'
map global normal '$' ': comment-block<ret>' -docstring 'comment block'

map global user 'r' ': surround<ret>' -docstring 'surround'
map global user 'R' ': change-surround<ret>' -docstring 'change surround'

hook global BufCreate .*\.(sbt) %{ set buffer filetype scala }

