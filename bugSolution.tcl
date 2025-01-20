proc count_occurrences {text pattern} {
  set count 0
  set index 0
  while {[regexp -indices $pattern $text match]} {
    incr count
    set index [lindex $match 1] + 1
  }
  return $count
}

puts [count_occurrences "abcabc" "abc"] ; correct output: 2
puts [count_occurrences "abcabc" "a"] ; correct output: 2
puts [count_occurrences "abcabcabc" "abc"] ; correct output: 3