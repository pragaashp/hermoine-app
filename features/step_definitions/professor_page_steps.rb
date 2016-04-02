Then /^(?:|I )should see a "([^"]*)"$/ do |text|
    if text == "Create new webcast request"
        page.all(".create-link").count.should == 1
    elsif text == "Edit this request"
        page.should has_selector?(".edit-link")
    end
    
end

And /^I have at least one class$/ do

    page.all('#classesTable').count.should == 1
end
    