proc check_empty_string {str} {
  if {$str == ""} {
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

# Incorrect usage leading to unexpected results
set myString ""
puts "String is empty: [check_empty_string $myString]"  ;#Correct output: 1

set myList {}
puts "List is empty: [check_empty_list $myList]"  ;#Correct output: 1

#Incorrect usage that will cause errors
set myString2
puts "String is empty: [check_empty_string $myString2]" # Error: variable "myString2" isn't defined.

set myList2
puts "List is empty: [check_empty_list $myList2]"  # Error: variable "myList2" isn't defined.

#Another example of incorrect usage, causing unexpected results
set myVar 0
puts "Var is empty: [check_empty_string $myVar]" ;# Incorrect output: 0. It should handle 0 as non-empty string
