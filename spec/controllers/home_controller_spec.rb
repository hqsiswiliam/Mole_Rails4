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

  describe "GET #resources" do
    it "responds successfully with an HTTP 200 status code" do
      get :resources
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it "renders the resources template" do
      get :resources
      expect(response).to render_template("resources")
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

  describe "GET #what_is_here" do
    it "responds successfully with an HTTP 200 status code" do
      get :what_is_here
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it "renders the what_is_here template" do
      get :what_is_here
      expect(response).to render_template("what_is_here")
    end
  end

  describe "GET #what_sub" do
    it "renders the birds template when pass birds parameter" do
      get :what_sub, :key=>"birds"
      expect(response).to render_template("birds")
    end
    it "renders the fungi template when pass fungi parameter" do
      get :what_sub, :key=>"fungi"
      expect(response).to render_template("fungi")
    end
    it "renders the plants template when pass plants parameter" do
      get :what_sub, :key=>"plants"
      expect(response).to render_template("plants")
    end
    it "renders the butterflies template when pass butterflies parameter" do
      get :what_sub, :key=>"butterflies"
      expect(response).to render_template("butterflies")
    end
  end

  describe "GET #contact_us" do
    it "responds successfully with an HTTP 200 status code" do
      get :contact_us
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
    it "renders the contact_us template" do
      get :contact_us
      expect(response).to render_template("contact_us")
    end
  end



end
