class AddDetailsToWishes < ActiveRecord::Migration[5.0]
  def change
    add_column :wishes, :item, :string
  end
end
