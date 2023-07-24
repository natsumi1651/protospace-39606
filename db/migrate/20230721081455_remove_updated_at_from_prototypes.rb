class RemoveUpdatedAtFromPrototypes < ActiveRecord::Migration[7.0]
  def change
    remove_column :prototypes, :updated_at, :datetime
  end
end
