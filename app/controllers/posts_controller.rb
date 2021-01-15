class PostsController < ApplicationController
  def index
     @posts = Post.all
     @count = Post.where(@post).count
  end
  
  def new
     @post = Post.new
  end
  
  def create
     @post = Post.new(params.require(:post).permit(:title, :s_date, :e_date, :check ,:Comment,:updated_at))
  if @post.save
    flash[:notice] = "スケジュールを新規登録しました"
    redirect_to :posts 
  else
    render "new"
  end
  end
  
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
  if @post.update(params.require(:post).permit(:title, :s_date, :e_date, :check ,:Comment,:updated_at))
    flash[:notice] = "「#{@post.title}」の情報を更新しました"
    redirect_to :posts
  else
    render "edit"
  end
  end

  def destroy
     @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "「#{@post.title}」を削除しました"
    redirect_to :posts
  end
end
