Feature: Update articles
  As a blogger
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given the following article exists
      | title                | content                            |
      | A breaking news item | Some really breaking action        |
    And I visit the "landing" page
    And I click "My Blog" link


  Scenario: I can update the information
    Given I click "Edit"
    And I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Update Article" button
    Then I should be on "Learning Rails 5" page
    And I should see "Article was successfully created."
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

#  Scenario: Blogger doesn't enter a title for the article [Sad Path]
#    Given I click "Edit"
#    When I fill in "Content" with "Excited about learning a new framework"
#    And I click "Update Article" button
#    Then I should see "Title can't be blank"
