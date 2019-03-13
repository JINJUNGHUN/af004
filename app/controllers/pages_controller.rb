class PagesController < ApplicationController

  def about

  end

  def privacy

  end

  def contact

  end

  def mylike
    @posts = Post.joins(:favorites).where('favorites.user_id = ?', @user.id)
    @favorites = current_user.favorites
  end

end
