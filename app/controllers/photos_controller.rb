class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @index_id = params["indexid"]

    render ("photos/detail.html.erb")
  end


end
