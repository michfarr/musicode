class SongsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
  end

  def show
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.create(song_params)
    redirect_to artist_path(@artist)
  end

  def update
  end

  def destroy
  end

  private
    def song_params
      params.require(:song).permit(:title, :length, :album, :artist_id)
    end
end
