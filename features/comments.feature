Feature: add comments on articles
  As a reader
  In order to express myself
  I would like to be able to comment on the articles

  Background:
    Given the following article exists
      | title                | content                            |
      | A breaking news item | Some really breaking action        |
    And I visit the "landing" page
    And I click "My Blog" link
    And I click "Show"

  Scenario: reader can comment on articles
    Given I fill in "Comment" with "Some smart remark"
    And I fill in "Email (optional)" with "just@email.me"
    And I click "Create Comment"
    Then I should see "Some smart remark"
    And I should see "just@email.me"

  Scenario: reader don't fill out the comments field
    Given I fill in "Email (optional)" with "just@email.me"
    And I click "Create Comment"
    Then I should see "Text can't be blank"

  Scenario: reader don't fill out a correct email
    Given I fill in "Email (optional)" with "email.me"
    And I click "Create Comment"
    Then I should see "Email is invalid"