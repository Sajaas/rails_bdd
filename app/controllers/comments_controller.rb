class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment.errors.any?
      flash[:success] = 'Comment was successfully created.'
      render 'articles/show'
    else
      redirect_to article_path(@article)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:email, :text)
  end
end
