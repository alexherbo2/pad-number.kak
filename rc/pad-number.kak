provide-module pad-number %{
  define-command pad-number -params 0..1 -docstring 'Pad numbers with leading zeros' %{
    evaluate-commands -save-regs '|p' %{
      set-register p %sh{
        max=${1:-1}
        for length in $kak_selections_length; do
          if test "$length" -gt "$max"; then
            max=$length
          fi
        done
        printf "$max"
      }
      set-register | "
        selection=$(cat)
        printf '%%0%reg{p}d' ""$selection""
      "
      execute-keys '|<ret>'
    }
  }
}
