require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user}

  context "without profile" do
    let(:user) { create :user }

    it "renders email" do
      render
      expect(rendered).to have_content user.email
    end
  end

  context "with profile" do
    let(:profile) { build :profile }
    let(:user) { create :user, profile: profile }

    it "renders first name" do
      render
      expect(rendered).to have_content user.profile.first_name
    end

    it "renders last name" do
      render
      expect(rendered).to have_content user.profile.last_name
    end
  end
end
