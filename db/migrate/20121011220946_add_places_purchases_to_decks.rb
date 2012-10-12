class AddPlacesPurchasesToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :day1purch, :float
    add_column :decks, :day2purch, :float
    add_column :decks, :day3purch, :float
    add_column :decks, :day4purch, :float
    add_column :decks, :day5purch, :float
    add_column :decks, :day1visit, :float
    add_column :decks, :day2visit, :float
    add_column :decks, :day3visit, :float
    add_column :decks, :day4visit, :float
    add_column :decks, :day5visit, :float
  end
end
