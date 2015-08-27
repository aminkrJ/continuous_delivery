require 'rails_helper'

feature "Libraries" do
  feature "GET /libraries" do
    scenario "works! (now write some real specs)" do
      visit libraries_path
      expect(page).to have_content("Listing Libraries")
    end
  end
end
