[![Build Status](https://travis-ci.org/matt-lin/Simpatico-Pup.svg?branch=master)](https://travis-ci.org/matt-lin/Simpatico-Pup)
[![Code Climate](https://codeclimate.com/github/matt-lin/Simpatico-Pup/badges/gpa.svg)](https://codeclimate.com/github/matt-lin/Simpatico-Pup)
[![Test Coverage](https://codeclimate.com/github/matt-lin/Simpatico-Pup/badges/coverage.svg)](https://codeclimate.com/github/matt-lin/Simpatico-Pup/coverage)


===================Team Info============================

Pivotal Tracker
https://www.pivotaltracker.com/n/projects/1542559

Heroku
http://simpatico-pup.herokuapp.com/

Customer's website
http://www.simpaticopup.com/

#### How the app addresses customer's need
SimpaticoPup is a website that collect crowd sourced data about the health,
temperament and suitability of pet dogs of various breeds, and from various
sources (dog breeders). This site can reduce and discourage irresponsible dog
breeding (by giving dog lovers a clear and superior way to identify responsibly
raised, healthy puppies) and can even ultimately improve the health and
temperament of the pet dogs being produced.

#### Dependencies -
  1. [rvm](https://rvm.io)
  2. Ruby: 2.2.2
  3. Rails: 4.2
  4. ImageMagick

### Setup
After cloning run bundle install --without production
<br/>Run rake db:setup to set up environment
<br/>If using a slow environment(e.g. Cloud9), run rake cucumber might fail on features that involve Javascript, especially edit_pup.feature and admin_upload.feature(these files involve heavy Javscript)
<br/>Travis CI should always be passing
<br/>If failed, try either re-run or only run individuals feature files, all the features files should be passing
<br/>**Only** run **db:migrate** and **db:seed** on Heroku site if new features require modifications to the database
<br/>ImageMagick must be installed in order to support profile image resizing

### Clarifications
  1. Seeds file
     - Most of the plain text on the site for paragraphs, buttons, titles and such are in a table called Customize in the DB. They have a name, content, and location field associated with them. The first lines of the Seeds file contains this information. The client also has the ability to change this text through the Admin dashboard, thus the text is not always up-to-date in the seeds file which means you must be careful whenever running **rake db:seed** otherwise you run the risk of un-doing what the client wants
     - Same goes for the Text table in the database

  2. Gems
     - ActiveAdmin
        - The gem used to generate the Admin dashboard and all files located in `app/admin`
        - Documentation: https://activeadmin.info/
     - Thredded
        - The gem used to generate the community forum
        - Initialized in: `config/initializers/thredded.rb`
        - Documentation: https://github.com/thredded/thredded



#### Current Contributors
*Eric Kong, Emiko Tsutsumi, Matthew Lin, Noah Poole, Raymond Gu, Shuyin Xu*

#### Past Contributors
*Jeff Yu, Gilbert Lo, Licong Wang, Jack Chen, Alex Ho, Zipei Wang*
