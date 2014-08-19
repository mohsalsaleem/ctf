class HomeController < ApplicationController
  def index
  	@feedback=Feedback.new				
  end

  def about
  end

  def team
  end
end
