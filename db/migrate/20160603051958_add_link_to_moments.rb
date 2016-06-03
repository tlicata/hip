class AddLinkToMoments < ActiveRecord::Migration[5.0]
  def change
    add_column :moments, :link, :string, :unique => true, :null => false
  end
end
