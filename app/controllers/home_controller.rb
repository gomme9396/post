class HomeController < ApplicationController
  def index
    
  end
  
  def write
  
    new_post = Post.new
    new_post.DBtitle = params[:title]
    new_post.DBcontent = params[:content]
    new_post.save
    
    redirect_to "/list"
  end
  
  def update_view
    @one_post = Post.find(params[:post_id])
  end
  
  def revise
    @one_post = Post.find(params[:post_id])
    @one_post.DBtitle = params[:title]
    @one_post.DBcontent = params[:content]
    @one_post.save
    redirect_to "/list"
  end
  
  def list
    @every_post = Post.all.order("id asc")
  end
  
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/list"
  end
end
