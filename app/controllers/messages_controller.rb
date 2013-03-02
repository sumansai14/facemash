class MessagesController < ApplicationController
before_filter :authenticate_user! 
attr_accessor :receiver
  def index
  	@messages = Message.all
  	
  end

  def create 
  		if(!["",nil].include?((params[:message][:content]).strip))	
  			@message = Message.create(params[:message])  		
  		end
  		
  	end
	def show
		@chatmessages = Message.where("sender IN (?) AND reciever in (?)",[params[:receiver],params[:sender]],[params[:receiver],params[:sender]]).order("created_at desc").limit(10).reverse
		
	end

end
