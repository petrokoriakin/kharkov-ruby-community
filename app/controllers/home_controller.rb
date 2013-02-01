class HomeController < ApplicationController
  def index
    @users = User.all
    @articles = Article.all.reverse
  end
end
