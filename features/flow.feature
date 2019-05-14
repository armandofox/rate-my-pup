################Javascript goes wrong other functionality works fine
#####################################################################
#javascript
Feature: Improve "flow" of site

    As a user
    So I can have a more positive experience on the RateMyPup webpage
    I want to be able to intuitively interact with the site

  Background: breeders have been added to the database
    Given the default layout exist
    Given the following breeders exist:
      | name            | city     | state  |
      | Carl            | Berkeley | CA     |
      | Chris           | Berkeley | CA     |
      | Alex            | Richmond | CA     |
      | Alexander       | New York | NY     |
      | Michael Jackson | Boston   | MA     |
      | George Michael  | Fresno   | CA     |
      | George W. Bush  | Waco     | TX     |

    Given the following users exist:
      | username       | email               | password       | password_confirmation| activated |
      | gilbert        | gilbert@berkeley.edu| 12345678       | 12345678             | true      | 
      
    And I am on the RateMyPup home page
    And I log in as "gilbert"

    Scenario: The hashtags should be present on the page
      Given I am on the "Create New Pup Test" page
      And I should see all of:
        | "#EasyToObedienceTrain"                     |
        | "#HardToObedienceTrain"                     |
        | "#EasyToHouseTrain"                         |
        | "#HardToHouseTrain"                         |
        | "#HighEnergy"                               |
        | "#CalmPersonality"                          |
        | "#BarksALot"                                |
        | "#VeryQuiet"                                |
        | "#OnePersonDog"                             |
        | "#FriendlyTowardEveryone"                   |
        | "#UnpredictableWithStrangers"               |
        | "#UnpredictableWithChildren"                |
        | "#Independent"                              |
        | "#ConstantCompanionAroundHome"              |
        | "#GreatWithOtherDogs"                       |
        | "#UnpredictableWithOtherDogs"               |
        | "#GreatWithCats&OtherSmallAnimals"          |
        | "#UnpredictableWithCats&OtherSmallAnimals"  |
        | "#LovesToPlayBall&Fetch"                    |
        | "#WellMannered&CanGoAnywhereWithMe"         |
        | "#ShedsALot"                                |
        | "#CoatNeedsFrequentGrooming"                |
        | "#EatsPoopOrOtherDisgustingThings"          |