class MessagesController < ApplicationController
	before_action :set_message, only:[:show,:edit,:update,:destroy]
	


	def index
	end

	def show
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)

		if(@message.save)
			flash[:notice] = "謝謝您～您的需求與意見我們已經收到囉！"
			redirect_to about_path
		else
			flash[:notice] = "不好意思，您似乎有資料漏填囉~"
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
		def set_message
			@message = Message.find(params[:id])
		end

		def message_params
			params.require(:message).permit(:name , :mail , :content)
		end
			


end
