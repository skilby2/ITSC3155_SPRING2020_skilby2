class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def new
    end
    
    def create
        @article = Article.new(params[:article])
        
        @article.save
        redirect_to @article
    end
end

private
def article_params
    params.require(:artcile).permit(:title, :text)
end