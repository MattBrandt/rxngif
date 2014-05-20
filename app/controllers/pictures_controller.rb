class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    # Your code goes here
    # Use the information after the slash in the URL to look up the director with the corresponding ID number
    # Store the director in the @director instance variable so the view can format it

    @picture = Picture.find(params[:id])
  end

  def new
    @p = Picture.new

    render 'new'
  end

  def create

    @p = Picture.new
    @p.source = params[:source]
    @p.caption = params[:caption]

    did_it_save = @p.save

    if did_it_save
      redirect_to '/all_pictures'
    else
      render
    end

  end
end

