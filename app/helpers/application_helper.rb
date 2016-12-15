module ApplicationHelper

def signed_in?
	if session[:customer_id].nil?
		return
	else
		@current_customer = Customer.find_by_id(session[:customer_id])
	end
end

def adminsigned_in?
	if session[:admin_id].nil?
		return
	else
		@admincurrent_admin = Admin.find_by_id(session[:admin_id])
	end
end

end
