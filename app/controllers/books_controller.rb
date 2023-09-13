class BooksController < ApplicationController

  def index
    @created_by = "Maribel"
    @tasks = ['Fold Laundry', 'Sweep porch', 'Mow lawn']
  end

  def new 
  end

  def show
    @title = params[:title]
    @author = params[:author]
    @price = params[:price]
    @published = params[:date]
  end

  def Update 
  end

  def delete
  end

end
