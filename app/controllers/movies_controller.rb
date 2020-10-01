class MoviesController < ApplicationController
before_action :set_movie, only: [:show, :edit, :update]
before_action :collect_genres, only: [:new, :edit]
before_action :authenticate_user!, except: [:index, :show]

  def about
  end

  def index
    @movies = Movie.all

  end

  def show

  end

  def new
    @movie = Movie.new

  end

  def create
@movie = Movie.new(movie_params)
if @movie.save
  redirect_to @movie, notice: "Movie was created"
else
  render 'new'
end
end

def edit
end

def update
if @movie.update(movie_params)
  redirect_to @movie, notice:"#{@movie.title} was successfully created"
else
  render'edit'
end
end

def recommended
  @placement = params[:placement]
  case @placement
  when 'in_theaters'
    @movies = Movie.in_theaters
  when 'coming_soon'
    @movies = Movie.coming_soon
  when 'go_now'
    @movies = Movie.go_now
  end
  render 'index'
end


private
def movie_params
params.require(:movie).permit(:title, :description, :has_subtitles, :placement, :mpaa_rating, :release_date, :ticket_price, :runtime, :poster_image, :director, :genre_id)
end

def set_movie
  @movie = Movie.find(params[:id])
end
def collect_genres
  @genres=Genre.all

end

end
