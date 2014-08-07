class Admin::WeixinAccountsController < Admin::ApplicationController
  before_filter :authenticate_admin!
  
  respond_to :html


  def show
    @Weixin_account = WeixinAccount.first 
    respond_with @weixin_account
  end

end
