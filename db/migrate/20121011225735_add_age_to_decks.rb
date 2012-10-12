class AddAgeToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :a18to24, :float
    add_column :decks, :a25to34, :float
    add_column :decks, :a35to44, :float
    add_column :decks, :a45to54, :float
    add_column :decks, :a55to64, :float
    add_column :decks, :a65plus, :float
  end
end
