@authentication
Feature: Farmdrop Signup
     As a non-member I should be able to signup to Farmdrop

@minimal
Scenario: I signup to Farmdrop

     Given I open "https://next.farmdrop.com/login"
     And I enter username "troy.harris.oz+farmdrop@gmail.com"
     And I enter password "ronaldmcdonald"
     And I enter postcode "E15JD"
     When I click create your account button
     And I wait for 15 sec
     Then I should be redirected to "https://next.farmdrop.com/london/fruit-and-veg"


@refactor_frontend_ui_tests @error_alert @negative
Scenario: I signup with an invalid email

     Given I open "https://next.farmdrop.com/login"
     And I enter username "troy.harris.oz+farmdrop@gmail"
     When I click create your account button
     Then I should see alert text as
     """
     Your email doesn't look correct
     Password can't be empty
     Postcode can't be empty
     """

@refactor_frontend_ui_tests @error_alert @negative
Scenario: I signup without a password

     Given I open "https://next.farmdrop.com/login"
     And I enter username "troy.harris.oz+farmdrop@gmail.com"
     When I click create your account button
     Then I should see alert text as
          """
          Password can't be empty
          Postcode can't be empty
          """

@refactor_frontend_ui_tests @error_alert @negative
Scenario: I signup without a postcode

     Given I open "https://next.farmdrop.com/login"
     And I enter username "troy.harris.oz+farmdrop@gmail.com"
     And I enter password "ronaldmcdonald"
     When I click create your account button
     Then I should see alert text as "Postcode can't be empty"

