class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(params[:article])
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end
end

private
def article_params
    params.require(:artcile).permit(:title, :text)
end