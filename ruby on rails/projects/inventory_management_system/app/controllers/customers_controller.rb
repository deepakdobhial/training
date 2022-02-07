class CustomersController < ApplicationController

  def index 
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def form
  end

  def create 
    @customer = Customer.new(name: params[:name], gender: params[:gender], date_of_birth: params[:date_of_birth], city: params[:city], state: params[:state], country: params[:country], email: params[:email], mobile_no: params[:mobile_no])
    @customer.save  
    redirect_to customers_path, notice: "Register successfully"
  end

end
