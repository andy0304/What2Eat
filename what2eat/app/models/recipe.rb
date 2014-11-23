class Recipe < ActiveRecord::Base
  attr_accessible :rcalorie, :rcategory, :rid, :rname, :rrating

  validates :rid, presence: true
  validates :rname, presence: true
  validates :rcategory, presence: true
  validates :rrating, presence: true, numericality: true
  validates :rcalorie, presence: true, numericality: true
end
