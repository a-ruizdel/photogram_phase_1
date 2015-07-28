class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @index_id = params["id"]
    @source = Photo.find(params["id"]).source
    @caption = Photo.find(params["id"]).caption

    render ("photos/detail.html.erb")
  end

def destroy
  Photo.find(params["id"]).destroy
  redirect_to :back
end

def new_form

  render ("photos/new.html.erb")
end

end
