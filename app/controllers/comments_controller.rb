class CommentsController < ApplicationController
	before_filter :authorise
	
	def create
		@dress = Dress.find params[:dress_id]
		@comment = @dress.comments.new(comment_params)
		@comment.customer_id = @current_customer.id
		@comment.save
		
		respond_to do |format|
			format.html { redirect_to @dress }
		end
	end
	
	private
	def comment_params
		params.require(:comment).permit(:content, :dress_id, :customer_id, :stars)
	end
end
