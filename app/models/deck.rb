class Deck < ActiveRecord::Base

  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  attr_accessible :merchantName, :desktopPurchases, :desktopVisits, :emailOpens, :likes, 
  :merchantRevenue, :mobilePurchases, :mobileVisits, :offersSold, :plus1s, :tweets, :visitors, 
  :wk1Redeem, :wk2Redeem, :wk3Redeem, :wk4Redeem, :malePurchases, :femalePurchases, :day1purch, :day2purch, :day3purch, :day4purch, 
  :day5purch, :day1visit, :day2visit, :day3visit, :day4visit, :day5visit, :a18to24, :a25to34, :a35to44, :a45to54, :a55to64, :a65plus,
  :logo
end
