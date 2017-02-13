class LinksController < ApplicationController
  def index

  end

  def new

  end

  def create
    @target_url = Link.create(
    user_id: current_user.id,
    target_url: params[:target_url],
    slug: params[:slug]
    )
  end
end
