class HomeController < ApplicationController
  def index
    
  end
  
  def write #여기에는 글을 쓰고 나면 내용을 Database를 만들어 안에 넣어줌
  
    new_post = Post.new 
    new_post.DBtitle = params[:title]
    new_post.DBcontent = params[:content]
    new_post.save
    
    redirect_to "/list" #작성하고 바로 목록으로 넘어가게끔 설정
  end
  
  def update_view #작성된 글을 post_id를 기준으로 Post DB안의 값을 One_post로 넘겨준다.
    @one_post = Post.find(params[:post_id])
  end
  
  def revise #수정 대상의 글을 수정하여 Post DB에 저장시켜 준다.
    @one_post = Post.find(params[:post_id])
    @one_post.DBtitle = params[:title]
    @one_post.DBcontent = params[:content]
    @one_post.save
    redirect_to "/list" #수정하고 바로 목록으로 넘어가게끔 설정
  end
  
  def list #DB에 저장된 모든값을 오름차순으로 보여줌
    @every_post = Post.all.order("id asc")
  end
  
  def destroy #Post DB에 저장된 값을 post_id를 기준으로 검색하여 지움
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/list" #지우고 목록으로 넘어감
  end
end
