class Book < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :comments

  def average_rating
    reviews.inject(0) { |sum, r| sum + r.score }.to_f / reviews.count
  end
end
