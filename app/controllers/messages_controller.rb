class BookingsController < ApplicationController

	def index
		@messages = Message.where(sender: / recipient:)
	end

	def show
		@message = Message.find(params[:id])
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)
		@message.user = current_user
		 if @message.save!
		 	redirect_to @message
		 else 
		 	render :new
		 end
	end

	private

	def message_params
		params.require(:message).permit(:content, :sender, :recipient)
	end

end