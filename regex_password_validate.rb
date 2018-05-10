# password must be minimum 6 chars long, have at least:
# 1 uppercase
# 1 lowercase
# 1 digit
# NO SPECIAL CHARS
regex=/^(?=.*[[:upper:]])(?=.*[[:lower:]])(?=.*[[:digit:]])[[:alnum:]]{6,}$/

puts regex =~ "jgR56d" # true
puts regex =~ "jgR56%" # false
puts regex =~ "jgRgkd" # false
puts regex =~ "45jfkdhl" # false
puts regex =~ "45KGlkjbkdh" #true
