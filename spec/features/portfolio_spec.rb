require 'rails_helper'

RSpec.feature "Porfolio", type: :feature do
  describe 'show portfolio' do
    scenario 'shows the portfolio page' do
      visit bio_and_resume_portfolios_path
      expect(page).to have_content('Portfolio')
      expect(page).to have_content('This site (christopherg.mendla.com)')
    end
  end
end