class Restaurant < ActiveRecord::Base
  validates_presence_of :name, :address
  validates_numericality_of :rating, :greater_than => 0, :less_than => 6, message: "needs to be a number between 1 and 5", allow_blank: true
end