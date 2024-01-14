class AddNotesToVillages < ActiveRecord::Migration
  def change
    add_column :villages, :notes, :string
  end
end
