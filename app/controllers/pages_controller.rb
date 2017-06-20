class PagesController < ApplicationController
  def contact
  end

  def about
  	@title = "This is my very cool page"
  end

  def home
  	@partners = Partner.all
  end

  def error
  	
  end
end
