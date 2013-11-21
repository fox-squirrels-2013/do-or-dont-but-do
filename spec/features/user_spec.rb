require "spec_helper"

feature "User browsing the website"
  scenario "User visits Dodonts list from the homepage"
    dodont = Dodont.new
    dodont.content = "Oh hai there"
    dodont.save
    visit '/'
    click_on 'Display List'
    page.should have_content "Oh hai there"
  end
end