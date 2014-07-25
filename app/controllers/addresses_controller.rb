class AddressesController < ApplicationController
	def index
	end
	 
	def new
	  @address = Address.new
	end
	 
	def create
	  @address = current_user.addresses.create(address_params)
	  if @address.save
	    redirect_to addresses_path
	  else
	    render action: 'new'
	  end
	end

	private 
	  def address_params
	    params[:address].permit(:address, :description, :user_id)
	  end
end
