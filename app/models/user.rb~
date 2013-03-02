class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  @@online = []
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  cattr_accessor :online, :instance_writer => false, :instance_reader => false
  has_one :profile
  after_create :create_child
  def online?
    if current_sign_in_at.present? and last_sign_out_at.present?
       if current_sign_in_at > last_sign_out_at 
       	true
      else
      	false
      end
    end
  end
  # Setup accessible (or protected) attributes for your model

  def to_param
  	username
  end
  def create_child
  Profile.create(:user_id => id)
end
  # attr_accessible :title, :body
end
