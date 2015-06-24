class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  has_attached_file :image, styles: { thumb: "150x150#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
