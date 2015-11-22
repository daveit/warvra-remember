class Vreceipt < ActiveRecord::Base
  belongs_to :village
  belongs_to :pay_type
  
  validates_associated :villages
  validates_associated :pay_types

  after_save :set_financial_to

  private

  def set_financial_to
    #village.update_attributes(financial_to: vreceipt.finto)
    self.village.financial_to = self.finto
    self.village.status_id = 1
    self.village.save
  end

end
