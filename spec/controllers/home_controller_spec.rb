require 'spec_helper'

describe HomeController do
	describe "GET #home" do
    it "responds successfully with an HTTP 200 status code" do
      get :home
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it "renders the home template" do
      get :home
      expect(response).to render_template("home")
    end
  end
  describe "GET #organisations" do
  	it "renders the organisations template when user has not enough access level" do
      user1 = User.create!(:email=>"ex@qiushi.com", :password=>"qqqqqqqq", :organisation=>false);
      sign_in user1
      get :organisations
      expect(response).to render_template("organisations")
    end
    it "renders the autorised_organisations template when user has enough access level" do
      user2 = User.create!(:email=>"example2@qiushi.com", :password=>"qqqqqqqq", :organisation=>true);
      sign_in user2
      get :organisations
      expect(response).to render_template("authorised_organisations")
    end
    it "renders organisations template when there is no user logined in" do
      get :organisations
      expect(response).to render_template("organisations")
    end
  end

  describe "GET #events" do
    it "renders the events template when user has not enough access level" do
      user1 = User.create!(:email=>"ex_event1@qiushi.com", :password=>"qqqqqqqq", :event=>false);
      sign_in user1
      get :events
      expect(response).to render_template("events")
    end
    it "renders the autorised_events template when user has enough access level" do
      user2 = User.create!(:email=>"ex_event2@qiushi.com", :password=>"qqqqqqqq", :event=>true);
      sign_in user2
      get :events
      expect(response).to render_template("authorised_events")
    end
    it "renders events template when there is no user logined in" do
      get :events
      expect(response).to render_template("events")
    end
  end



end
