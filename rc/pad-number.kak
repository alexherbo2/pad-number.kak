define-command pad-number -params 0..1 -docstring 'Pad numbers with [n] leading zeroes' %{ evaluate-commands -save-regs '|L' %{
  set-register L %sh{
    max=${1:-1}
    for length in $kak_selections_length; do
      if test $length -gt $max; then
        max=$length
      fi
    done
    printf $max
  }
  set-register '|' "printf '%%0%reg(L)d' ""$(cat)"""
  execute-keys '|<ret>'
}}
