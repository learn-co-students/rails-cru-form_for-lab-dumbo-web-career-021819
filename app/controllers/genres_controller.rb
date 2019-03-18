class GenresController < ApplicationController

 before_action :get_genre, only: [:show, :edit, :update]

 def index
   @genre = Genre.all
 end

 def new
 end

 def create
   @genre = Genre.new
   @genre.name = params[:genre][:name]
   @genre.save
   redirect_to @genre
 end

 def edit
 end

 def update
   @genre.name = params[:genre][:name]
   @genre.save
   redirect_to @genre
 end

 def show
 end

 private

 def get_genre
   @genre = Genre.find(params[:id])
 end

end
