class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
    # @comment = Comment.new(comment_params)
    # if @comment.save
    # redirect_to article_path(@article)
    # else
    #   render 'articles/show'
    # end

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
