class SuppliersController < ApplicationController

 def create

   @supplier = Supplier.new(supplier_params)
   if @supplier.save
     redirect_to root_path, notice: "se registro correctamente"
   else
     puts @supplier.errors.full_messages
     @errors = @supplier.errors.full_messages
     session[:errors] = @errors
     redirect_to request.referrer, alert: "No se pudo registrar el proveedor"
   end
 end

def edit
  puts '-----------------------------------------------------------------------------------'
  puts params[:id]
  puts '-----------------------------------------------------------------------------------'
  @supplier = Supplier.find_by(nit: params[:id])
end

 def supplier_params
   params.require(:supplier).permit(:supplier_name,:nit,:contact_person_name,:contact_person_number,:count_number,:bank_id)
 end
end
