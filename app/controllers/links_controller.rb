class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(:slug => params[:slug], :target_url => params[:target_url], :user_id => current_user.id)

    @link.save

    redirect_to '/'
  end
end
