class SuscriptionsController < ApplicationController
	def create
		@suscription = Suscription.new(suscription_params)
	  @suscription.save
	end

	private

  	def suscription_params
    	params.require(:suscription).permit(:fullname, :email, :phone, :comment)
  	end
end
