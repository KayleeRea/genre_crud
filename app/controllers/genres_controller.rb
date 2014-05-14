class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def new
  @genre = Genre.new
  end

  def create
  @genre = Genre.create(genre: params[:genre][:genre])
    redirect_to root_path
  end

  def show
  @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(genre: params[:genre][:genre])
    redirect_to genre_path(@genre)
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to root_path
  end

end