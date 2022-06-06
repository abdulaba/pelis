class BookmarksController < ApplicationController
  def index
  end

  def show

  end

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])

  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list_id = @list.id
    if @bookmark.save
      redirect_to lists_path
    else
      render :new

    end
  end

  def edit
  end

  def update

  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to @bookmark.list
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
