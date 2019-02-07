class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :email, uniqueness: true
    validates :email, inclusion: {in: %w(@ .)}
    validates :phone_number, length: {is: 10}
    validates :phone_number, numericality: true
end
