Given(/^I am in the cart for puppy adoption site$/) do
  @browser.goto 'http://puppies.herokuapp.com/carts/3267'
end


Given(/^my selection of two puppies to adopt are present$/) do
  puts "inside step_definition"
end

And(/^my two are chosen$/) do
  puts "inside step_definition"
end

And(/^I enter my info to adopt$/) do

  #@browser.div(:id =>'order_name').input 'name'
  #@browser.div(:id =>'field').input 'address'
  #@browser.div(:id =>'field').input 'address'
  #@browser.div(:id =>'field').input 'address'

  #@browser.text_field(:id => 'order_name').set "My Name"
  #@browser.text_area(:id => 'order_address').set "some address"
  #@browser.text_field(:id => 'order_email').set "My Email"
  #@browser.select_list(:id => 'order_pay_type').set 'Check'

  on_page(LoginPage).text_field(:id => 'order_name').set 'name'
  on_page(LoginPage).text_field(:id => 'order_address').set 'address'
  on_page(LoginPage).text_field(:id => 'order_email').set 'email'
  on_page(LoginPage).select_list(:id => 'order_pay_type').set 'Check'

end

Then(/^I complete the process$/) do
  #@browser.button(:id =>'action', :id => 'submit').click
  on_page(LoginPage).button(:id => 'submit').click
end

And(/^I wait for a response$/) do
  fail unless @browser.text.include? 'Thank you for adopting a puppy!'
end