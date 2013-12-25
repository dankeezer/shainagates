class ArtworksController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
   @artworks = Artwork.order("position")
  end

  def admin
    if params["artwork"].nil?

      # this should be it's own "sort" method but I couldn't fiture it out
      @artworks = Artwork.order("position")
    else
      params[:artwork].each_with_index do |id, index|
        Artwork.update_all({position: index+1}, {id: id})
      end
    end
    @artworks = Artwork.order("position")
  end

  def new
    @artwork = Artwork.new
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def create
    @artwork = Artwork.new(params[:artwork])
    if @artwork.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])

    if @artwork.update(params[:artwork].permit(:name, :description, :path))
      redirect_to admin_path
    else
      render :edit
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to admin_path
  end

  private

  def artwork_params
    params.require('artwork').permit(:name, :description, :filepicker_url)
  end

end
