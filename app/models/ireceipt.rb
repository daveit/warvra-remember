class Ireceipt < ActiveRecord::Base
  belongs_to :individual
  belongs_to :pay_type

  after_save :set_financial_to

  private

  def set_financial_to
    self.individual.financial_to = self.financial_to
    self.individual.status_id = 1
    self.individual.save
  end

end
