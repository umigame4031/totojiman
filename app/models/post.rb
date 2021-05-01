class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  belongs_to :genre

  belongs_to :user

  has_one_attached :image

  validates :title, :date, :field, :fish, :tackle, :text, presence: true
  validates :area_id, :genre_id, numericality: { other_than: 1 } 
end
