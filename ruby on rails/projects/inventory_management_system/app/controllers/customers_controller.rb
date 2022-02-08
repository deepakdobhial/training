class CustomersController < ApplicationController

  def index 
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
    # debugger
  end

  def create    
    @customer = Customer.new(customer_params)
    # debugger
    if @customer.save
      flash[:message] = "Register Successfully"
      redirect_to "/customers/#{ @customer.id }"
    else
      render :customers_new_path
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    # debugger
  end

  def update
    @customer.update(customer_params)
    # debugger
    redirect_to "/customers/#{@customer.id }"
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to :customers
  end
  
  private
  def customer_params
    params.require(:customer).permit(:name, :gender, :date_of_birth, :city, :state, :country, :email, :mobile_no)
  end

end
