Given(/^the puppies URL is entered correctly$/) do
  require 'watir-webdriver'
  browser=Watir::Browser.new :ie
  browser.goto "http://puppies.herokuapp.com/"
  browser.link(:text=>"2").click
  browser.link(:text=>"3").click
  sleep 15
  browser.close
end

And(/^the home page is displayed$/) do
  puts "inside step_definition"
end

Given(/^the puppy adoption logo is displayed$/) do
  puts "inside step_definition"
end

And(/^left menu options are present$/) do
  puts "inside step_definition"
end

Then(/^access is okay$/) do
  puts "inside step_definition"
end

And(/^full access to site is available$/) do
  puts "inside step_definition"

end