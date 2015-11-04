require 'rails_helper'

RSpec.feature "User Views Their Profiles", type: :feature do
   let!(:user) do
    User.create(
      name: "rube Goldberg",
      email: "machine@example.com",
      code_school: CodeSchool.new(name: "Wyncode")
      )
  end

  before do
    visit user_path(user)
  end

   it "displays there name" do
    expect(page).to have_content user.name
  end

  it "displays thier email" do
    expect(page).to have_content user.email
  end

  it " displays there code school" do
    save_and_open_page
    expect(page).to have_content user.code_school.name
end
end

