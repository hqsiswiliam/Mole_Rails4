
#GIVEN#
Given /^I am an authorised user with organisations$/ do
	@user_organisation_authorised = User.create!(:email=>"or@qiushi.com", :password=>"qqqqqqqq", :organisation=>true);
end

Given /^I am an authorised user with organisations and I signed in$/ do
	visit '/users/sign_in'
  fill_in "user[email]", :with => @user_organisation_authorised[:email]
  fill_in "user[password]", :with => @user_organisation_authorised[:password]
  click_button "Sign in"
end


#WHEN#
When /^I sign in with valid organisations credentials$/ do
	visit '/users/sign_in'
  fill_in "user[email]", :with => @user_organisation_authorised[:email]
  fill_in "user[password]", :with => @user_organisation_authorised[:password]
  click_button "Sign in"
end
When /^I sign out$/ do
	delete 'users/sign_out'
end

When /^I visit events page$/ do
	visit '/home/events'
end

#THEN#
Then /^I see organisations secret content$/ do
	click_link "Organisations"
	page.should have_content "authorised"
end

Then /^I cannot see organisation secret page$/ do
	visit '/'
	click_link "Organisations"
	page.should have_content "Secret page only for those who authorised!"
end

Then /^I cannot see events secret page$/ do
	page.should have_content "Some secret Event only for authorised member!"
end