class CreatePerves < ActiveRecord::Migration
  def change
    create_table :perves do |t|
      t.string :company
      t.string :number_sold

      t.timestamps
    end
  end
end
