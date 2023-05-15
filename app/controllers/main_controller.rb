class MainController < ApplicationController
 before_action :authenticate_user!
  def home
    @user = current_user
    @bank =Bank.new() 
    @supplier = Supplier.new()
    @suppliers = Supplier.paginate(page: params[:page])
    @banks = Bank.all.count
  end
end
