class Status < ActiveRecord::Base
  has_many :villages
  validates_associated :villages
  
  validates_presence_of :name
  validates_uniqueness_of :name
end
