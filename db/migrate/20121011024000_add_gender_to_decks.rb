class AddGenderToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :malePurchases, :string
    add_column :decks, :femalePurchases, :string
  end
end
