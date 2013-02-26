class SessionsController < Devise::SessionsController
  def create 
  super  
  end

	
  def destroy
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end

end
