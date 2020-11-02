## Description
This is the online Ruby on Rails Portfolio site of Christopher G. Mendla. It is a work in process. The purpose is to show an example of Ruby on Rails code since most of the code I've written as a freelancer or as an employee is subject to non disclosure agreements.

* This repo is public. 
* The url for the site is http://christopherg.mendla.com
* The site is NOT https. 
* Hosted on Digital Ocean running Ubuntu 18.2
## History
This application was begun around 2017 and not maintained until October 2020. Since 10/20, I have been actively developing the app. 
## Current Status
* **Ruby**: ruby 2.6.5p114 (2019-10-01 revision 67812) [x86_64-linux]
* **Rails** 5.1.4
* **Server**: puma
* **Database**: Postgres (Not implemented in production)
* **Testing**: Rspec, Simplecov, Capybara
* **Rubocop**: ~ 30 remaining issues
* **Brakeman**: Not installed yet
## Cloning and testing
* Clone this repository
* Set the current ruby version. Currently 2.6.5 (check Gemfile to be sure)
* Development database: christopherg_dev
* Test database: christopherg_test
* `bundle exec rspec` to run the test suite
* `bundle exec puma` to run the puma server in development

## Roadmap
* **Testing**: Add testing to get to at least 95% coverage and then maintain that testing. 
	* Add Factorybot when the database is active
	* Add system tests
* **Database**:
	* Set up the database on the server (Postgres is installed)
	* Add database related functionality such a searchable list
* **Brakeman**: Add when activating the database functionality
* **Authentication**: Add authentication capability. Leave the bulk of the site public but show authentication
*  **Update to the current stable versions of Ruby and Rails**
	* Use railsdiff.org to update all applicable code. 
* **Email** - Set up mailer functionality as a demo
* **Template**: Clean up the CSS* 
