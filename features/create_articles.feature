Feature: create articles
  As a blogger
  In order to share my content with blog visitors
  I would like to be able to create articles

  Background:
      Given I visit the "landing" page
      When I click "New Article" link

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Save Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

   Scenario: Blogger doesn't enter a title for the article [Sad Path]
     When I fill in "Content" with "Excited about learning a new framework"
     And I click "Save Article" button
     Then I should see "Title can't be blank"
  #
  # # Write another sad path scenario you can think of
