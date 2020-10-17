class NewsController < ApplicationController
  def index
    @news = News.all
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    @news.user_id = current_user.id
    @news.save
    redirect_to news_path(@news)
  end


  def edit
    @news = News.find(params[:id])
  end

  def update
    @news = News.find(params[:id])
    @news.update(news_params)
    redirect_to news_path(@news)
  end

  def destroy
    news = News.find(params[:id])
    news.destroy
    redirect_to user_path(news.user), notice: "記事を削除しました。"
  end

  private
  def news_params
  params.require(:news).permit(:title, :body, :thumbnail)
  end
end
