# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :deck do
    offersSold 1
    merchantRevenue "MyString"
    wk1Redeem 1.5
    wk2Redeem 1.5
    wk3Redeem 1.5
    wk4Redeem 1.5
    emailOpens "MyString"
    visitors "MyString"
    mobileVisits 1.5
    desktopVisits 1.5
    mobilePurchases 1.5
    desktopPurchases 1.5
    plus1s "MyString"
    likes "MyString"
    tweets "MyString"
  end
end
