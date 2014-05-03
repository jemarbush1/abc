class LoginPage
  include PageObject

  def text_field(name)
    text_filed.name(:id => 'order_name')
  end

  def text_field(address)
    text_field.address(:id => 'order_address')
  end

  def text_field(email)
    text_field.email(:id => 'order_email')
  end

  text_field(:name, :id => 'order_name')
  text_field(:address, :id => 'order_address')
  text_field(:email, :id => 'order_email')
  select_list(:pay_type, :id => 'order_pay_type')
  button(:place_order, :value => 'Place Order')

end