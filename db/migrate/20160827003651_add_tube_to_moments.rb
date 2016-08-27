class AddTubeToMoments < ActiveRecord::Migration[5.0]
  def change
    add_column :moments, :tube, :string
  end
end
