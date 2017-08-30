class ArticlesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create, :edit, :delete]

  def index
    @articles = Article.order('created_at DESC')
  end
  
  def show
    @article = Article.find(params[:id])
    @comments = @article.comments.order('created_at DESC')
  end
  
  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end
  
  def destroy
    @article = Article.find(params[:id])
    if current_user == @article.user
      if @article.destroy
      redirect_to articles_path
      else
        render action: 'index'
      end
      
    end
  end
  
  private

  def article_params
    params.require(:article).permit(:title, :text) #указываем только то, что получаем с клиената, остальные поля запрещены к передаче
  end

end