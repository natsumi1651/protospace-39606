class RemoveCreatedAtFromPrototypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :prototypes, :created_at, :datetime
  end
end
