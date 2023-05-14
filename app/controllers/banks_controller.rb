class BanksController < ApplicationController
 def index
  @banks=Bank.all
  @show_render = false
 end


 def create
   puts 'pasando por controlador de create'
   puts bank_params['title'].length
   @bank = Bank.new(bank_params)

   if @bank.save
     redirect_to root_path , notice: "Se registro el bank"
   elsif bank_params['title'].length > 50
     redirect_to request.referrer, alert: "Asegurese que el nombre no contenga mas de 50 caracteres"
   else
     redirect_to request.referrer, alert: "Asegurese que el nombre de ese bank no exista aun o el que el campo este en blanco"
   end
 end

 def bank_params
   params.require(:bank).permit(:title)
 end

 def update
   @bank=Bank.find(params[:id])

   if @bank.update(bank_params)
     redirect_to banks_path,notice: 'El bank se ha actualizado'
   else
     redirect_to request.referrer,alert: "No se pudo actualizar el producto"
   end
 end

 def edit
   @bank = Bank.find(params[:id])
 end


 def destroy
   @bank=Bank.find(params[:id])
   @bank.destroy
   redirect_to bank_path,notice: 'Se ha eliminado correctamente el banco'
   
 end


end
