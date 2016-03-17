When /^I follow the "(.*)" video thumbnail$/ do |title|
  step "I should see \"#{title}\""
  find(:xpath, "//h4[text()=\"#{title}\"]/../../a").click
end

Then /^I should see a video titled "(.*)"$/ do |title|
  step "I should see \"#{title}\""
  expect(page).to have_selector(:xpath, "//iframe")
end

Then /^I fill in the "(.*)" field with "(.*)"$/ do |field,value|
  find(:xpath,"//label[text()=\"#{field}\"]/../input").set(value)
end