require "spec_helper"

feature "styling" do
  scenario "the page got styling" do
    new_dodont = Dodont.new
    new_dodont.content = "Hey-o"
    new_dodont.save
    visit '/dodonts'
    expect(page).to have_css('li')
 end
end
# feature "User browsing the website"
#   scenario "User visits Dodonts list from the homepage"
#     dodont = Dodont.new
#     dodont.content = "Oh hai there"
#     dodont.save
#     visit '/'
#     click_on 'Display List'
#     page.should have_content "Oh hai there"
  # end
