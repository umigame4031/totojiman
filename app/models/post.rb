class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area

  has_one_attached :image

  validates :date, :field, :fish, :tackle, :text, presence: true
  validates :genre_id, numericality: { other_than: 1 } 
end
