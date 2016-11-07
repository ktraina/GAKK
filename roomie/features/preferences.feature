Feature: As a user, I should be able to fill out the preferences to find a new roommate.

  Scenario: User needs to create user preferences and needs a residence.
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: Yes
    Then I should select my street preference: 355 5th Avenue
    Then I should select my city preference: New York
    Then I should select my state preference: NY
    Then I should select my postal code preference: 07011
    Then I should submit the update
    Then I should see preferences updated.

  Scenario: User needs to create user preferences and does not need a residence.
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: No
    Then I should submit the update
    Then I should see preferences updated.

  Scenario: User needs to create user preferences and does not need a residence. Tries to add residence information.
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: Yes
    Then I should fail to select my street preference: 355 5th Avenue

Scenario: User needs to create user preferences and needs a residence. Adds address with special characters.
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: Yes
    Then I should select my street preference: 355 5th Avenue!!
    Then I should select my city preference: New York
    Then I should select my state preference: NY
    Then I should select my postal code preference: 07011
    Then I should submit the update
    Then I should see error message

 Scenario: User needs to create user preferences and needs a residence. Adds zip code with 6 digits
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: Yes
    Then I should select my street preference: 355 5th Avenue
    Then I should select my city preference: New York
    Then I should select my state preference: NY
    Then I should select my postal code preference: 07011
    Then I should submit the update
    Then I should see error message

  
Scenario: User needs to create user preferences and needs a residence. Adds city with special characters.
    When I go to the homepage
    Then I should see a login button
    Then I should click on the login button
    Then I should visit the login page
    Then I should fill in email with my email
    Then I should fill in password with my password
    Then I should click the sign in button
    Then I should see Signed in successfully.
    Then I should see the create user preferences button
    Then I click on create user preferences
    Then I should see the preferences form
    Then I should select my gender preference: Male
    Then I should select my smoking preference: Yes
    Then I should select my pets preference: No
    Then I should select my cleanliness preference: Slightly messy 
    Then I should select my outgoing preference: I want a roommate that guards the apartment 25-8
    Then I should select my quietness preference: If I hear them I don't want them
    Then I should select my residence preference: Yes
    Then I should select my street preference: 355 5th Avenue
    Then I should select my city preference: New York!
    Then I should select my state preference: NY
    Then I should select my postal code preference: 070116
    Then I should submit the update
    Then I should see error message 