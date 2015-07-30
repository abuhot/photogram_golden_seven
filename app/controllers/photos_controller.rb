class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

  @id = params[:id]
  @photo = Photo.find(@id)
  @caption = @photo.caption
  @source = @photo.source

  end

  def new_form

    render("new_form.html.erb")


  end

  def create_row

    @caption = params[:the_caption]
    @source = params[:the_source]

    p = Photo.new
    p.caption = @caption
    p.source  = @source
    p.save

    redirect_to("http://localhost:3000/photos")

  end

  def destroy

    @id = params[:id]
    @photo = Photo.find(@id)

    @photo.destroy

    redirect_to("http://localhost:3000/photos")


  end

  def edit_form

    @id = params[:id]
    @photo = Photo.find(@id)

  end

  def update_row

    caption = params[:the_caption]
    source = params[:the_source]

    id = params[:id]
    p = Photo.find(id)
    p.caption = caption
    p.source = source
    p.save

    redirect_to("http://localhost:3000/photos")

  end





end
