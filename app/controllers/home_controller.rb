class HomeController < ApplicationController
  def home
  end

  def resources
  end

  def organisations
    @organisations = Organisation.all
    if !user_signed_in?
      render :organisations
    else
      if current_user.organisation==true
        render :authorised_organisations
      end
    end
  end

  def what_is_here
  end

  #A new method invokes sub dir of what_is_here
  def what_sub
    case params[:key]
    when "birds"
      @birds = Bird.all
      render :birds
    when "butterflies"
      @butterflies = Butterfly.all
      render :butterflies
    when "fungi"
      @fungis = Fungi.all
      render :fungi    
    when "plants"
      @plants = Plant.all
      render :plants

    else
      render :what_is_here
    end
  end

  def events
    @events = Event.all
    if !user_signed_in?
      render :events
    else
      if current_user.event==true
        render :authorised_events
      end
    end
  end

  def contact_us
  end
end
