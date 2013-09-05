class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    
    if @post.valid?
      @post.save
      redirect_to @post
    else
      render :new
    end 
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    
    @post.title = params[:post][:title]
    @post.body = params[:post][:body]
    @post.save

    if @post.valid?
      @post.save
      redirect_to @post
    else
      render :edit
    end 
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :body)  
  end

end
