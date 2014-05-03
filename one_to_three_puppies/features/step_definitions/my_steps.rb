Given(/^I am on the puppy adoption site$/) do
  require 'watir-webdriver'
  browser=Watir::Browser.new :ie
  browser.goto "http://puppies.herokuapp.com/"
  sleep 10
  browser.close
end

Given(/^there are a selection of puppies to adopt from$/) do
  puts "inside step_definition"
end

And(/^I view the puppy details$/) do
  @browser.button(:value => "View Details").click
end

When(/^I select puppy "([^"]*)"$/) do |arg|
  puts "inside step_definition"
end

When(/^I adopt "([^"]*)" puppy\(s\)$/) do |arg|
  @browser.button(:value => "Adopt Me!").click
end

Then(/^I click the Complete the Adoption button$/) do
  @browser.button(:value => "Complete the Adoption").click
end

And(/^I enter "([^"]*)" in the name field$/) do |arg|
  @browser.text_field(:id => "order_name").set(name)
end

And(/^I enter "([^"]*)" in the address field$/) do |arg|
  @browser.text_field(:id => "order_address").set(address)
end

And(/^I enter "([^"]*)" in the email field$/) do |arg|
  @browser.text_field(:id => "order_email").set(email)
end

And(/^I select "([^"]*)" from the pay options$/) do |arg|
  @browser.select_list(:id => "order_pay_type").select(pay_type)
end

And(/^I click the Place Order button$/) do
  @browser.button(:value => "Place Order").click
end

Then(/^I should see "([^"]*)"$/) do |arg|
  fail unless @browser.text.include? 'Thank you for adopting a puppy!'
end