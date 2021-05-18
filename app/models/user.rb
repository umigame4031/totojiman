class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts

  has_many :orders
  has_many :client_orders, class_name: "Order", :foreign_key => 'client_id'
  has_many :contractor_orders, class_name: "Order", :foreign_key => 'contractor_id'

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :guide_permit, inclusion: { in: [true, false] }
end
