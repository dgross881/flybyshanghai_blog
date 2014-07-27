class ArticlesController < ApplicationController
   before_action :set_article, only: [:show, :edit, :new, :update, :destroy]

  def index 
    @articles = Article.all
  end 
  
  def show
    @article = Article.find(params[:id])
  end
 
  def new 
    @comment = @article.comments.new
    @comment.article_id = @article.id
  end 

  def create 
    @article = Article.new(article_params)  
    @article.save
    redirect_to article_path(@article)
  end 

  def edit 
  end  

  def destroy 
   @article.destroy 
   redirect_to articles_path
  end 

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Article '#{@article.title}' Updated!"
    redirect_to article_path(@article)
 end
end

private 

  def set_article
   @article = Article.find(params[:id]) 
  end 

  def article_params
    params.require(:article).permit(:title, :body, :images)
  end




