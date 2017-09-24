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
    Given I click "Comment"
    And I fill in "Comment" with "Some smart remark"
    And I click "Send Comment"
    Then I should see "Some smart remark"