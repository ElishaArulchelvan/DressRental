class SessionsController < ApplicationController
  
  def new
  
  end
  
  def create
	customer = Customer.find_by_email(params[:email])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to session[:return_to] || root_path
	else
		flash.now[:error] = "Invalid email or password combination"
		render 'new'
	end
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to root_path
  end
  
  def adminnew
  
  end
  
  def admincreate
  	admin = Admin.find_by_email(params[:email])
  	if admin && admin.authenticate(params[:password])
  		session[:admin_id] = admin.id
  		redirect_to session[:return_to] || root_path
  	else
  		redirect_to adminlogin_path, alert: "Invalid admin username/password"
  	end
  end
  
  def admindestroy
  	session[:admin_id] = nil
  	redirect_to root_path
  end
  
end
