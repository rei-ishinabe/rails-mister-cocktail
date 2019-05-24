class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader

  def average_rating
    return 'Be the first reviewer!' if reviews.empty?

    sum = 0.0
    reviews.each do |review|
      sum += review[:rating]
    end
    return (sum / reviews.count).round
  end
end
