class AddDiffToDataDifferences < ActiveRecord::Migration[7.0]
  def change
    add_column :data_differences, :diff, :string
  end
end
