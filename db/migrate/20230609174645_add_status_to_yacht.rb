class AddStatusToYacht < ActiveRecord::Migration[7.0]
  def change
    add_column :yachts, :status, :boolean, default: false
  end
end
