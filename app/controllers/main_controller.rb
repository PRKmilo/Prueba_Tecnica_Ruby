class MainController < ApplicationController
 before_action :authenticate_user!
  def home
    @user = current_user
    @banco =Banco.new() 
  end
end
