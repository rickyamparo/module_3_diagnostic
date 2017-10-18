require 'rails_helper'
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

RSpec.describe "fuel search function" do
  it "can display a list of ten stations closest to the zip code provided" do
    visit '/'
    fill_in "q", :with => "80203"
    click_on "Locate"
    expect(current_path).to eq('/search')
    expect(current_url).to have_content('q=80203')
    expect(page).to have_css('.station-list')
    within('.station-list') do
      expect
    end
  end
end
