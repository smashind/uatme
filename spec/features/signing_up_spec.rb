require "rails_helper"

RSpec.describe "Signing up" do

  before do
    visit "/"
    click_link "Sign up"
  end

  scenario "with valid credentials" do
    fill_in "Email", with: "name@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    expect(page).to have_content "You have signed up successfully."
  end

  scenario "with invalid email" do
    fill_in "Email", with: "abba"
    click_button "Sign up"
    expect(page).to have_content "Email is invalid"
  end
end