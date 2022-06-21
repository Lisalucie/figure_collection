class Figure < ApplicationRecord
  has_many :purchases
  belongs_to :user, optional: true
  has_one_attached :photo
end
