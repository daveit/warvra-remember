class AddNotesToResidents < ActiveRecord::Migration
  def change
    add_column :residents, :notes, :string
  end
end
