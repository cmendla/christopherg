require 'rails_helper'

RSpec.feature "Homes", type: :feature do
  describe 'show article' do
    scenario 'shows the home page' do
      visit home_path
      expect(page).to have_content('This is the personal/professional site of Christopher G. Mendla')
    end
  end
end
