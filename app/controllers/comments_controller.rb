class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment.errors.any?
      flash[:danger] = 'Comment was not created.'
      render 'articles/show'
    else
      redirect_to article_path(@article)
      flash[:alert] = 'Comment was successfully created.'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:email, :text)
  end
end
