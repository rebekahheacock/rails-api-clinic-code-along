class RemoveNameFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :name, :string
  end
end
