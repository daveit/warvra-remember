class Associate < ActiveRecord::Base
=begin
  validates :surname, presence: true
  validates :first, presence: true
  validates :email, presence: true
=end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Associate.create! row.to_hash
    end
  end

end
