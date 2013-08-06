class Api::V1::User::LinksController < Api::ApplicationController

  # List of authenticated user links
  def index
    @collection = account.links
    respond_with @collection
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
    @item = account.links.web.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
