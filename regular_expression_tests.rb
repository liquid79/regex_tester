print 'Enter phone number [formats: xxx.xxx.xxxx OR xxx-xxx-xxxx OR (xxx) xxx-xxxx]: '
phone_num = gets.chomp!

until phone_num =~ /(\A\d{3}.\d{3}.\d{4}\Z)|(\A\d{3}\-\d{3}\-\d{4}\Z)|(\A\(\d{3}\)\s\d{3}\-\d{4}\Z)/
  print 'Phone number format invalid. Please type again: '
  phone_num = gets.chomp!
end
if phone_num =~ /(\A\d{3}.\d{3}.\d{4}\Z)|(\A\d{3}\-\d{3}\-\d{4}\Z)|(\A\(\d{3}\)\s\d{3}\-\d{4}\Z)/
  puts 'Phone number valid.'
end
puts

print 'Enter email address [formats: x.x.x@.xxx.xx OR x.x.x.@xxx.xxx]: '
email_address = gets.chomp!

until email_address =~ /\A([a-z_]+[a-z0-9_]*)+(\.[a-z_]+[a-z0-9_]*)*@([a-z])+(\.[a-z]{2,6})+\Z/
  print 'Email address format invalid. Please type again: '
  email_address = gets.chomp!
end
if email_address =~ /\A([a-z_]+[a-z0-9_]*)+(\.[a-z_]+[a-z0-9_]*)*@([a-z])+(\.[a-z]{2,6})+\Z/
  puts 'Email address valid.'
end

# case insensitive emails
puts
puts 'Case insensitive email section'

print 'Enter email address [formats: x.x.x@.xxx.xx OR x.x.x.@xxx.xxx]: '
email_address = gets.chomp!

until email_address =~ /\A([a-z_]+[a-z0-9_]*)+(\.[a-z_]+[a-z0-9_]*)*@([a-z])+(\.[a-z]{2,6})+\Z/i
  print 'Email address format invalid. Please type again: '
  email_address = gets.chomp!
end
if email_address =~ /\A([a-z_]+[a-z0-9_]*)+(\.[a-z_]+[a-z0-9_]*)*@([a-z])+(\.[a-z]{2,6})+\Z/i
  puts 'Email address valid.'
end