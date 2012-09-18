class GalleryController < ApplicationController
  def index
    @shoots = Shoot.order(:id)
  end
end
