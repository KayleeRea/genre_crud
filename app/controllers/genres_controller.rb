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

end