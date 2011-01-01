Then /^user "([^""]*)" must exist$/ do |username|
  if User.find_by_login("#{username}").blank? 
    abort
  end
end
