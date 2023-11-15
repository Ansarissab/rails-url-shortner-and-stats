class LinksController < ApplicationController
  before_action :set_link, only: %i[show]

  def index
    @links = Link.recent_first
  end

  def show
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to root_path
    else
      index
      redirect_to :index, status: :unprocessable_entity
    end
  end

  private

  def set_link
    @link = Link.find(params[:id])
  end

  def link_params
    params.require(:link).permit(
      :url
    )
  end
end
