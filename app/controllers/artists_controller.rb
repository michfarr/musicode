class ArtistsController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :index, :show]

  def home
  end

  def index
    @artists = Artist.order( name: :asc)
  end

  def show
    @artist = Artist.find( params[:id] )
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect_to @artist
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy

    redirect_to artists_path
  end

  protected

  def artist_params
    params.require(:artist).permit(:name, :genre, :image, :description)
  end
end
