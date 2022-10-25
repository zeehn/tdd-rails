require "rails_helper"

feature "user creates a todo" do
  scenario "successfully" do 
    visit root_path
    
    click_on "Add a new todo"
    fill_in "Title", with: "Buy Stuff"
    click_on "Submit"

    expect(page).to have_css '.todos li', text: 'Buy Stuff'
  end
end
