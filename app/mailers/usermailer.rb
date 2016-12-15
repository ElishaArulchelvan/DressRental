class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome(customer)
    @customer = customer
    mail(:to => customer.email, :subject =>"Thank you for registering to Dress Rental")
  end
end
