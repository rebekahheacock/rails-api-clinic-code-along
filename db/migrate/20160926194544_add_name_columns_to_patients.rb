class AddNameColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :given_name, :string
    add_column :patients, :surname, :string
  end
end
