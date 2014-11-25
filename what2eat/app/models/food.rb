class Food < ActiveRecord::Base
  attr_accessible :energe, :name, :number
  
  validates :name, presence: true
  validates :number, presence: true, numericality: true
  validates :energe, presence: true, numericality: true
end
