class Api::V1::User::LinksController < Api::ApplicationController
  authorize_actions_for Link

  # List of authenticated user links
  def index
    @collection = repository.all
    respond_with @collection, each_serializer: ::User::LinkSerializer
  end

  def create
    @item = repository.build.becomes(::User::LinkType)
    @item.assign_attributes(params[:link])
    @item.save
    respond_with @item, location: api_v1_user_link_path(@item), serializer: ::User::LinkSerializer
  end

  def show
    @item = repository.find(params[:id])
    respond_with @item, serializer: ::User::LinkSerializer
  end

  def update
    @item = repository.find(params[:id]).becomes(User::LinkType)
    authorize_action_for @item
    @item.assign_attributes(params[:link])
    @item.save
    respond_with @item, location: api_v1_user_link_path(@item)
  end

  def destroy
    @item = repository.find(params[:id])
    authorize_action_for @item
    @item.destroy
    respond_with @item, location: api_v1_user_links_path
  end

  protected

  def repository
    @repository ||= ::User::LinksRepository.new(current_user)
  end
end
