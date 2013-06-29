class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params.require(:article).permit(:title, :content)
    if @article.save
      redirect_to articles_path, :notice => "Article has been created successfully"
    else
      render :action => :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes params.require(:article).permit(:title, :content)
       redirect_to [:articles]
    else
      render :action => :edit
    end
  end
end

