require 'rails_helper'

feature "Libraries" do
  feature "GET /libraries" do
    scenario "works! (now write some real specs)" do
      get libraries_path
      expect(response).to have_http_status(200)
    end
  end
end
