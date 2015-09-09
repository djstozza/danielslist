class ConversationsController < ApplicationController
	before_action :check_if_logged_in
	before_action :conversation, :only => [:show]

	def new
  	end

  	def create
    	recipients = User.where(id: conversation_params)
    	conversation = @current_user.send_message(conversation_params[:recipients], conversation_params[:body], conversation_params[:subject]).conversation
    	redirect_to conversation_path(conversation)
    	flash[:message] = "Your message was successfully sent!"
  	end

  	def show
    	@receipts = conversation.receipts_for(@current_user)
    	# mark conversation as read
    	conversation.mark_as_read(@current_user)
  	end

  	def reply
    	@current_user.reply_to_conversation(conversation, message_params[:body])
    	redirect_to conversation_path(conversation)
    	flash[:message] = "Your reply message was successfully sent!"
  	end

  	def trash
    	conversation.move_to_trash(@current_user)
    	redirect_to mailbox_inbox_path
  	end

  	def untrash
    	conversation.untrash(@current_user)
    	redirect_to mailbox_inbox_path
  	end


  	private
  	def check_if_logged_in
  		redirect_to root_path unless @current_user.present?
 	end

 	def conversation_params
    	params.require(:conversation).permit(:subject, :body, :recipients => [])
  	end
  	
  	def message_params
    	params.require(:message).permit(:body, :subject)
  	end
end
