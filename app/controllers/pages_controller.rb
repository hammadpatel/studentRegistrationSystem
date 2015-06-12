class PagesController < ApplicationController
  before_filter :require_login, :only => :secret
  def home
 
  end

  def apply
  end

  def aboutus
  end

  def login
  end
  
end
