require 'rails_helper'

describe "Current user room list" do
  before { login_as user }

  let(:user) { create :user, email: "current_user@gm.com" }
  let(:another_user) { create :user, email: "another_user@gm.com" }
  let!(:room1) { create :room, listing_name: "Current User Room 1", user: user }
  let!(:room2) { create :room, listing_name: "Current User Room 2", user: user }
  let!(:room3) { create :room, listing_name: "Other User Room 1", user: another_user }

  it "shows all current_user rooms" do
    visit rooms_url

    expect(page).to have_text("Current User Room 1")
    expect(page).to have_text("Current User Room 2")
  end

  it "doesn't show another_user room" do
    visit rooms_url

    expect(page).not_to have_text("Other User Room 1")
  end
end
