class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :score, numericality: { greater_than_or_equal_to: 1,
                                    less_than_or_equal_to: 5,
                                    only_integer: true }

  validates :user_id, :book_id, presence: true
end
