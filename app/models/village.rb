class Village < ActiveRecord::Base

  belongs_to :status
  belongs_to :region
  
  # has_and_belongs_to_many :village_categories

  has_many :contacts
  has_many :vreceipts
  has_many :residents, -> { order(surname: :asc) } 
    
  validates :name, presence: true
  validates_uniqueness_of :name
  validates :status_id, :presence => true
  validates :region_id, :presence => true

  # paginates_per 15

  scope :financial, -> { where(status_id: 1) }
  scope :notfinancial, -> { where(status_id: 2) }
  scope :prospect, -> { where(status_id: 5)}
  scope :cancelled, -> { where(status_id: 4)}
  scope :allvillages, -> {where(status_id: 1) }

  def self.search(search)
    if search
      where('lower(name) LIKE ? OR lower(email) LIKE ?', "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
