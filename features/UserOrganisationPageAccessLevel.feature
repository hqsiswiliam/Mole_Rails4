Feature: User Organisation Page Access Level
  In order to get access to protected organisations sections of the site
  A authorised user
  Should be able to sign in and see the secret content

  Scenario: User is authoried with organisations page
      Given I am an authorised user with organisations
      When I sign in with valid organisations credentials
      Then I see organisations secret content

  Scenario: User logged out and cannot see secret page
      Given I am an authorised user with organisations
      When I sign out
      Then I cannot see organisation secret page

  Scenario: User logged out and cannot see secret page
      Given I am an authorised user with organisations
      When I visit events page
      Then I cannot see events secret page

