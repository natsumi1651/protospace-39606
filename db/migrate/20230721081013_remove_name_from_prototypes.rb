class RemoveNameFromPrototypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :prototypes, :name, :string
  end
end
