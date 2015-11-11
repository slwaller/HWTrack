require 'rails_helper'
#3
#4
describe "edit user info", type: :feature, js: true do
  it "should allow edit user info" do
    visit root_path
    click_link 'Log In'
    click_link 'Sign up'
    fill_in "Email", with: "test@test.com"
    fill_in "Name", with: "Test"
    select("Admin", :from => "Role")
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    visit root_path
    click_link 'Edit'
    fill_in "Email", with: "test@example.com"
    fill_in "Name", with: "Thor"
    fill_in "Password", with: "hammer123"
    fill_in "Password confirmation", with: "hammer123"
    fill_in "Current password", with: "password"
    click_button "Update"
    expect(page).to have_content("Your account has been updated successfully")
  end
end