proc check_empty_string {str} {
  if {[string length $str] == 0} {
    return 1
  } else {
    return 0
  }
}

proc check_empty_list {list} {
  if {[llength $list] == 0} {
    return 1
  } else {
    return 0
  }
}

# Improved handling of potentially undefined variables
set myString ""
puts "String is empty: [check_empty_string $myString]" ;#Correct output: 1

set myList {}
puts "List is empty: [check_empty_list $myList]" ;#Correct output: 1

set myString2 ""
puts "String is empty: [check_empty_string $myString2]" ;# Correct output: 1

set myList2 {}
puts "List is empty: [check_empty_list $myList2]"  ;# Correct output: 1

#More robust check that handles numerical 0 correctly
set myVar 0
puts "Var is zero or empty string: [expr {[string length $myVar] == 0}]" ;#Correct output: 0
