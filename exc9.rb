# Here's some new strange stuff, remember type it exactly

days = "Mon Tue Wed Thu Fri Sat Sun"
#Way 1 to write string in multiple lines using \n
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# #{} cannot be in single quotes
puts "Here are the days: #{days}"
puts "Here are the months: #{months}"

#Second Way to write string in multiple lines
puts %q{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}
