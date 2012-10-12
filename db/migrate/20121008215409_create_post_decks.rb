class CreatePostDecks < ActiveRecord::Migration
  def change
    create_table :post_decks do |t|
      t.string :merchant
      t.string :number_sold

      t.timestamps
    end
  end
end
