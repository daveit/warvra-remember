class Individual < ActiveRecord::Base
  belongs_to :ivillage
  belongs_to :status
  belongs_to :title
  belongs_to :region
  has_and_belongs_to_many :icats
  has_many :ireceipts
  validates :first, presence: true 
  validates :last, presence: true 
end
