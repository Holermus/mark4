class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  #paperclip
  has_attached_file :profilepic, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}, :default_url => "/profilepics/:style/missing.png"
  validates_attachment_content_type :profilepic, content_type: /\Aimage\/.*\Z/
end
