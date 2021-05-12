class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :posts

  has_many :orders
  has_many :clients, class_name: "User", through: :orders
  has_many :contractors, class_name: "User", through: :orders

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :image, ImageUploader

  validates :nickname, presence: true, length: { maximum: 6 }
  validates :guide_permit, inclusion: { in: [true, false] }
end
