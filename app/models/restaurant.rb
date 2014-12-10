class Restaurant < ActiveRecord::Base
  attr_accessible :number, :rname

  validates :rname, presence: true
  validates :number, presence: true, numericality: true
end
