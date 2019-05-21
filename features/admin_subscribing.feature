#Newly added feature file for Iter1-1!

Feature: Admin should be able to see all the users who are subscribing newsletters and be able to process group emailing
    As an admin
    I want to be able to process group emailing to all the users who are subscribing newsletter
    So that I can send out newsletters conveniently
    
Background: Admin already login
    Given I login as an admin
    Given the following newsletter_user exist:
          | email                    |
          | jeff@berkeley.edu        |    
          | gilbert@berkeley.edu     |
          | suibianjia@berkeley.edu  | 
        
    Scenario: admins inspect who are subscribing when there are subscriber
      And admin go to newsletter_users
      Then I should see "jeff@berkeley.edu"
      And I should see "gilbert@berkeley.edu"
      And I should see "suibianjia@berkeley.edu"
      
    Scenario: admins inspect who are subscribing when there aren't subscriber
      Given there is no subscribers
      And admin go to newsletter_users
      Then I should see "There are no Newsletter Users yet"
      
    Scenario: admins unsubscribe single user
      And admin go to newsletter_users
      # Check NewsletterUser with id = 1, jeff@berkeley.edu in this case
      When I check "batch_action_item_1"
      Then I submit the batch action form with "destroy"
      Then I should not see "jeff@berkeley.edu"
      And I should see "gilbert@berkeley.edu"
      And "jeff" is not in the subscribing group
      
      # End for Iter 1-1
      
    # Iter 1-2
    Scenario: admins unsubscribe multiple users
      And admin go to newsletter_users
      When I check "batch_action_item_1"
      When I check "batch_action_item_3"
      Then I submit the batch action form with "destroy"
      Then I should not see "jeff@berkeley.edu"
      And I should not see "suibianjia@berkeley.edu"
      And I should see "gilbert@berkeley.edu"
      And "suibianjia" is not in the subscribing group
      And "jeff" is not in the subscribing group
      
    Scenario: admins process group emailing
      And admin go to newsletter_users
      And check all subscribers
      Then I submit the batch action form with "email"
      Then all the users should receive an email
      
    Scenario: admins process emailing to checked subscribers
      And admin go to newsletter_users
      And I check "batch_action_item_1"
      And I submit the batch action form with "email"
      Then "jeff" should receive an email
      And "gilbert" should not receive an email
      
    Scenario: admins process group emailing with subject and message
      And admin go to newsletter_users
      And check all subscribers
      And I send emails with subject as "subject" and message as "message" 
      Then all the users should get an email with "subject" and "message" 
      
    Scenario: admins process emailing with subject and message to checked subscribers
      And admin go to newsletter_users
      And I check "batch_action_item_1"
      And I send emails with subject as "subject" and message as "message" 
      Then "jeff" should get an email with "subject" and "message" 
      And "gilbert" should not receive an email
    # End for Iter 1-2
      