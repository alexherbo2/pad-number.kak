provide-module pad-number %{
  # Pad numbers with leading zeros
  define-command pad-number -params 0..1 -docstring 'Pad numbers with leading zeros' %{
    evaluate-commands -save-regs '|p' %{
      # Save the max length
      set-register p %sh{
        max_length=${1:-1}
        for length in $kak_selections_length; do
          if test "$length" -gt "$max_length"; then
            max_length=$length
          fi
        done
        printf "$max_length"
      }

      # Pad numbers with leading zeros
      set-register | "
        selection=$(cat)
        printf '%%0%reg{p}d' ""$selection""
      "

      # Execute the command
      execute-keys '|<ret>'
    }
  }
}
