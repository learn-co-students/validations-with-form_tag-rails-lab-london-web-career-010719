class Post < ActiveRecord::Base
  validates :title, length: {minimum: 1}
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validates :content, length: {minimum: 100}
end
