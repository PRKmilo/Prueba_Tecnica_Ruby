class BancosController < ApplicationController
 def index
  @bancos=Banco.all

 end

 def new
 end

 def create
   puts 'pasando por controlador de create'
   puts banco_params['title'].length
   @banco = Banco.new(banco_params)

   if @banco.save
     redirect_to root_path , notice: "Se registro el banco"
   elsif banco_params['title'].length > 50
     redirect_to request.referrer, alert: "Asegurese que el nombre no contenga mas de 50 caracteres"
   else
     redirect_to request.referrer, alert: "Asegurese que el nombre de ese banco no exista aun o el que el campo este en blanco"
   end
 end

 def banco_params
   params.require(:banco).permit(:title)
 end


 def destroy
 end
end
