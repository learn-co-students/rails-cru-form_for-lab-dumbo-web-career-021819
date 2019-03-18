class SongsController < ApplicationController

 before_action :get_song, only: [:show, :edit, :update]

 def index
   @songs = Song.all
 end

 def new
 end

 def create
   @song = Song.new
   @song.name = params[:song][:name]
   @song.artist_id = params[:song][:artist_id]
   @song.genre_id = params[:song][:genre_id]
   @song.save
   redirect_to songs_path(@song)
 end

 def edit
 end

 def update
   @song.name = params[:song][:name]
   @song.artist_id = params[:song][:artist_id]
   @song.genre_id = params[:song][:genre_id]
   @song.save
   redirect_to songs_path(@song)
 end

 def show
 end

 private

 def get_song
   @song = Song.find(params[:id])
 end

end
