class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to prototype_comments_path
 
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
    #redirect_to "/prototype/#{comment.prototype.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :prototype_id).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
