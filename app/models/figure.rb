class Figure < ApplicationRecord
  has_many :purchases
  belong_to :user
end
