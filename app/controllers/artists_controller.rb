class ArtistsController < ApplicationController

 before_action :get_artist, only: [:show, :edit, :update]

 def index
   @artists = Artist.all
 end

 def new
 end

 def create
   @artist = Artist.new
   @artist.name = params[:artist][:name]
   @artist.bio = params[:artist][:bio]
   @artist.save
   redirect_to @artist
 end

 def edit
 end

 def update
   @artist.name = params[:artist][:name]
   @artist.bio = params[:artist][:bio]
   @artist.save
   redirect_to @artist
 end

 def show
 end

 private

 def get_artist
   @artist = Artist.find(params[:id])
 end

end
