class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.sort_by { |artist| artist.name }
  end

  def show
    @artist = Artist.find( params[:id] )
  end

  def home
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :genre, :image, :description)
  end
end
