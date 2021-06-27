class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comment.build(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to blog_url(@blog)}
      else
        format.html { redirect_to blog_url(@blog), notice: '投稿できませんでした…'}
      end
    end
  end
  private
  def comment_params
    params.require(:comment).permit(:blog_id, :content)
  end
end
