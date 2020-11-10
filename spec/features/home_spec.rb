require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  describe 'show article' do
    scenario 'shows the home page' do
      visit home_path
      expect(page).to have_content('This is the personal/professional site of Christopher G. Mendla')
    end
  end
end

=begin
    scenario 'navigates to the bio page'
      within '.u-nav-container' do
        click_on 'Bio'
      end  
      expect(page).to have_content('Obsidian Global LLC')
=end   
