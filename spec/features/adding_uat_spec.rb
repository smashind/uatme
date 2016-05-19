require "rails_helper"

RSpec.feature "Adding a new UAT" do

  let(:user) { FactoryGirl.create(:user) }

  describe "while signed in with valid attributes" do

    before do
      sign_in user
      click_link "New UAT"
    end

    it "saves the UAT" do
      fill_in "doc_title", with: "Example UAT"
      fill_in "doc_description", with: "This is an example UAT."
      fill_in "doc_sections_attributes_0_heading", with: "This is a heading."
      fill_in "doc_sections_attributes_0_items_attributes_0_content", with: "This is an item."
      expect{ click_button "Save UAT" }.to change(Doc, :count).by(1)
    end
  end

  describe "while not signed in" do

    it "is not possible" do
      visit new_doc_path
      expect(current_path).to eq(new_user_session_path)
      expect(page).to have_content("You need to sign in or sign up before continuing.")
    end
  end
end