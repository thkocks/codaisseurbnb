require 'rails_helper'

describe "View individual room" do
  let(:room) { create :room }

  it "shows room features" do
    visit room_url(room)

    expect(page).to have_text(room.home_type)
    expect(page).to have_text(room.user.email)
    expect(page).to have_text(room.accommodate)
    expect(page).to have_text(room.bedroom_count)
    expect(page).to have_text(room.bathroom_count)
    expect(page).to have_text(room.listing_name)
    expect(page).to have_text(room.description)
    expect(page).to have_text(room.address)
  end

  it "shows labels" do
    visit room_url(room)

    expect(page).to have_text("TV")
    expect(page).to have_text("Kitchen")
    expect(page).to have_text("Internet")
    expect(page).to have_text("Heating")
    expect(page).to have_text("Air Conditioning")
    expect(page).to have_text("Guests")
  end
end
