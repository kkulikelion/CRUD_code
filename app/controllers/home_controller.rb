class HomeController < ApplicationController
  def index
  end

  def create
    @new_post = Post.new
    @new_post.db_title = params[:title]
    @new_post.db_content = params[:content]
    @new_post.save
    
    redirect_to "/read"
  end

  def read
    @all_post = Post.all
  end
  
  def update_view
    @one_post = Post.find(params[:id])
  end
  
  def update_real
    @one_post = Post.find(params[:id])
    @one_post.db_title = params[:title]
    @one_post.db_content = params[:content]
    @one_post.save
    
    redirect_to "/read"
  end

  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    
    redirect_to "/read"
  end
end
