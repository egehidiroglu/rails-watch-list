class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    list = List.find(params[:list_id])
    @bookmark.list = list
    @bookmark.save
    redirect_to list_path(list)
  end

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    list_id = @bookmark.list_id
    @bookmark.destroy
    redirect_to list_path(list_id), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
