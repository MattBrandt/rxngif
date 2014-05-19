class PicturesController < ApplicationController
  def index
    @list_of_pictures = Picture.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the director with the corresponding ID number
    # Store the director in the @director instance variable so the view can format it

    @picture = Picture.find_by({ :id => params[:id] })
  end

  def create

    @p = Picture.new
    @p.id= params[:id]
    @p.caption = params[:zebra]
    @p.image_url = params[:image_url]
    @d.save

    redirect_to("http://localhost:3000/pictures")

  end

end
