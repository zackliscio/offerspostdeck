class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.integer :offersSold
      t.string :merchantRevenue
      t.float :wk1Redeem
      t.float :wk2Redeem
      t.float :wk3Redeem
      t.float :wk4Redeem
      t.string :emailOpens
      t.string :visitors
      t.float :mobileVisits
      t.float :desktopVisits
      t.float :mobilePurchases
      t.float :desktopPurchases
      t.string :plus1s
      t.string :likes
      t.string :tweets

      t.timestamps
    end
  end
end
