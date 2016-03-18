Given /the following requests exist/ do |requests_table|
  requests_table.hashes.each do |request1|

  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
#   regexp = /#{e1}.*#{e2}/m
#   page.body.should =~ regexp
end

Given(/^I click on "([^"]*)"$/) do |arg1|

end