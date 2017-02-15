class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(:slug => params[:slug], :target_url => params[:target_url], :user_id => current_user.id)

    @link.standardize_target_url!

    if @link.save
      flash[:success] = "Link successfully created!"
      redirect_to '/'
    else
      flash[:warning] = "Link unable to create!"
      render :new
    end

  end
end
