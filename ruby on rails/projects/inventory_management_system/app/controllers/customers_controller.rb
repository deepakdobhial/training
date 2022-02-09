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
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @customer = Customer.find(params[:id])
    # debugger
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to "/customers/#{ @customer.id }"
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to :customers
  end

  def search
    @date_of_birth = params[:dob_query]
    @keyword = params[:key_query]
    if @date_of_birth.blank? or @date_of_birth.nil?
      @customers = Customer.where('name ilike ?', "#{@keyword}%")
    else
      @customers = Customer.where("date_of_birth <= ?", @date_of_birth).and(Customer.where('name ilike ?', "#{@keyword}%"))
    end
    
  end

  
  private
  def customer_params
    params.require(:customer).permit(:name, :gender, :date_of_birth, :city, :state, :country, :email, :mobile_no, interest:[])
  end

end
