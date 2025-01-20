proc count_occurrences {text pattern} {
  set count 0
  while {[regexp $pattern $text match]} {
    incr count
    set text [string range $text [regexp first $pattern $text] end]
  }
  return $count
}

puts [count_occurrences "abcabc" "abc"] ; correct output: 2
puts [count_occurrences "abcabc" "a"] ; incorrect output: 1
puts [count_occurrences "abcabcabc" "abc"] ; incorrect output: 1