class HomeController < ApplicationController
  def home
  end

  def resources
  end

  def organisations
  end

  def what_is_here
  end

  #A new method invokes sub dir of what_is_here
  def what_sub
    case params[:key]
    when "birds"
      render :birds
    when "butterflies"
      render :butterflies
    when "fungi"
      render :fungi    
    when "plants"
      render :plants

    else
      render :what_is_here
    end
  end

  def events
    @events = Event.all
    if current_user.organisation==true
      render :authorised_events
    end
  end

  def contact_us
  end
end
