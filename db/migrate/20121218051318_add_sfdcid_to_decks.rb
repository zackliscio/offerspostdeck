class AddSfdcidToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :sfdcid, :string
  end
end
