class Product < ActiveRecord::Base
  has_one :category
  has_many :reviews
end
