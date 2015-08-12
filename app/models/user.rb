class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  has_attached_file :profilepic, :styles => { :avatar => "200x200#", :thumb => "100x100#", :tobecropped => "500x500>" }, :processors => [:cropper], :default_url => "images/:style/missing.png"
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :reprocess_profilepic, :if => :cropping?
  validates_attachment_content_type :profilepic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "image/jpe"]

  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
  
  def profilepic_geometry(style = :original)
    @geometry ||= {}
    @geometry[style] ||= Paperclip::Geometry.from_file(profilepic.path(style))
  end
  
  private
  
  def reprocess_profilepic
    profilepic.reprocess!
  end
end
