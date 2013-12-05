Given(/^I navigate to the Google Home Page$/) do
  visit_page GoogleHomePage
end


When(/^I enter grumpy cat pumpkin$/) do
  on_page GoogleHomePage do |page|
    page.search = 'grumpy cat pumpkin'
  end
  sleep(10)
end


And(/^I click the Search button$/) do
  on_page GoogleHomePage do |page|
    page.google_search
  end
  sleep(10)
end


Then(/^I will have Orange and Black pumpkins in the results$/) do
  pending # express the regexp above with the code you wish you had
end