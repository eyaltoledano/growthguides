class TransactionsController < ApplicationController

	def create
		guide = Guide.find_by!(slug: params[:slug])
		token = params[:stripeToken]

		begin
			charge = Stripe::Charge.create(
				amount: book.price,
				currency: "usd",
				card: token,
				description: current_user.email
				)
			@sale = guide.sales.create!(
				buyer_email: current_user.email
				)
			redirect_to pickup_url(guid: @sales.guid)
		rescue Strike:CardError => e
			@error = e
			redirect_to guide_path(guide), notice: @error
		end
	end

	def pickup
		@sale = Sale.find_by!(guid: params[:guid])
		@guide = @sale.guide
	end

end
