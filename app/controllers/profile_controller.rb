class ProfileController < ApplicationController

  def show
  	@user = User.find_by_username(params[:username])
  	@profile = @user.profile
  	@online_user = []
  	User.all.each do |u|
  		if u.online? 
  			@online_user << u
  		end
  	end
  	respond_to do |format|
  		format.html  		
  		format.js  		
  	end 
  end

  def update
  	@profile = Profile.find_by_id(current_user.id)
  	@profile.update_attributes(params[:profile])
  	respond_to do |format|
  		format.html{redirect_to username_path(current_user.username)}
  		format.js  		
  	end   
  end
  
  def edit
  	
  end
end

	
