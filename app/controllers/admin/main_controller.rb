class Admin::MainController < Admin::ApplicationController
  before_filter :authenticate_admin!
  def index
    render layout: false
  end
end
