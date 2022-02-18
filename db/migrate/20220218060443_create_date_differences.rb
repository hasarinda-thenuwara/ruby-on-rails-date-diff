class CreateDateDifferences < ActiveRecord::Migration[7.0]
  def change
    create_table :date_differences do |t|
      t.string :date1
      t.string :date2
      t.string :diff

      t.timestamps
    end
  end
end
