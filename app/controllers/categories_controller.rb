class CategoriesController < ApplicationController

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "Your new category has been created"
      redirect_to @category
    else
      render 'new'
    end
  end

  def index
  end

  def show
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
