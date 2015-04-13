Given /^I logged in as "(\w+)" with "(\w+)" "(\w+)" times$/ do |name, pwd, cnt|
  User.create username: name, password: pwd, counter: cnt.to_i
end

Then /^I see my counter at "(\w+)"$/ do |cnt|
  assert page.has_content? "You've logged in #{cnt} time(s)!"
end
