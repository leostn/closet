# Created by mingting and freeman at 17/10/18
Feature: Login Page
  Scenario: Login
    Given a user visits the site
    When a user visits the login page
    Then she should see the username field
    And she should see the password field
    And she should see the login button

  Scenario: Login Success
    Given a user visits the site
    When a user visits the login page
    And she logs in with username "admin" and password "Default123"
    Then she should see a message of login success

  Scenario: Login User not found
    Given a user visits the site
    And she is logged out
    When a user visits the login page
    And she logs in with username "baduser" and password "badpasswd"
    Then she should see a message of "user not registered"

  Scenario: Login Incorrect Login
    Given a user visits the site
    When a user visits the login page
    And she logs in with username "admin" and password "badpasswd"
    Then she should see a message of "Incorrect username or password"


