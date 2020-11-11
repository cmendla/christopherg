require 'rails_helper'

describe 'Download Resumes' do
    # let( :submission_email ){ 'foo@example.com' }
    # let( :email_csv ){ "id,email,created_at\n1,#{ submission_email }," }
        scenario 'Download PDF Resume' do
          visit home_path
          expect(page).to have_content('My Resumes:')

          # within '.u-nav-container' do
          #  click_on 'Bio'
          # end  
          # expect(page).to have_content('Obsidian Global LLC')

        
          click_link('Download PDF')

          # expect{ click_on 'Download PDF' }
          # .not_to raise_error(Capybara::Poltergeist::MouseEventFailed)

           expect( DownloadHelpers::download_content ).to include email_csv
        end
    #specify do

      # 

      # expect( DownloadHelpers::download_content ).to include email_csv
    # end
end
