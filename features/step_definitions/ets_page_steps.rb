Given /the following requests exist/ do |requests_table|
  pending
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  pending
end

Given(/^I click on "([^"]*)"$/) do |link|
  pending
end

Then /^I should see a table named "(.*)"$/ do |table_name|
  page.should have_content(table_name)
end

And /^I should see a column named "(.*)"$/ do |col_name|
  page.should have_content(col_name)
end

Then /^I should see "([^"]*)" button/ do |name|
  find_button(name).should_not be_nil
  pending
end

Then(/^request "([^"]*)" status should be "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on "([^"]*)" for request "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a button named "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a field named "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see a table with (\d+) entries$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end