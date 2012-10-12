class AddMerchantNameToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :merchantName, :string
  end
end
