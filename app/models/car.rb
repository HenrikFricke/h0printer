class Car < ActiveRecord::Base
  validates :name, presence: true
  validates :mark, presence: true 
end
