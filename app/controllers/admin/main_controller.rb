class Admin::MainController < Admin::ApplicationController
  before_filter :authenticate_admin!

  def index
  end
  
  def dashboard
    
  end
end
