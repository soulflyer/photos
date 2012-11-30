Feature: Photo returns pathnames
Scenario: Photo returns fullsize pathname
Given there is a shoot "newshoot"
And a photo "pic1" in "newshoot"
And "newshoot" has "public" "publicpath1"
When I ask "photo" for "fullsize" path
Then I should see fullpath to fullsize version of  pic1
