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
    @helper=false
    @supplier = Supplier.find_by(nit: params[:id])
  end

  def update
    @supplier = Supplier.find_by(nit: params["id"])

    if @supplier.update(supplier_params)
      redirect_to root_path, notice: 'Se pudo actualizar correctamente el proveedor'
    else
      redirect_to request.referrer, alert: "No se pudo actualizar el proveedor"
    end
  end

  def destroy
    puts 'esta entrando al destroy---------------------------------------------------------------'
    puts params
    @supplier= Supplier.find_by(nit: params[:id])
    @supplier.destroy
    redirect_to root_path, notice:'Se elimino correctamente el proveedor'
  end
  def show
    puts 'ingresando a show------------------------------------------------------------------'
    puts params
    puts 'ingresando a show------------------------------------------------------------------'
    @supplier=Supplier.find_by(nit: params[:id])
  end

  def supplier_params
    params.require(:supplier).permit(:supplier_name,:nit,:contact_person_name,:contact_person_number,:count_number,:bank_id)
  end
end
