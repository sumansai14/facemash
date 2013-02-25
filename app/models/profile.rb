class Profile < ActiveRecord::Base
  attr_accessible :name, :user_id, :image_delete,:picture
  belongs_to :user
  has_attached_file :picture , :default_url => "/assets/images/missing.png",:styles => { :small => "175x175>" },
  					:url => "/assets/images/profiles/:id/:style/:basename.:extension",
  					:path => ":rails_root/public/assets/images/profiles/:id/:style/:basename.:extension"
  before_save :destroy_image?
  
  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

private
  def destroy_image?
    self.picture.clear if @image_delete == "1"
  end
end
