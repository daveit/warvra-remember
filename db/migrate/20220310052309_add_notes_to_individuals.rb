class AddNotesToIndividuals < ActiveRecord::Migration
  def change
    add_column :individuals, :notes, :string
  end
end
