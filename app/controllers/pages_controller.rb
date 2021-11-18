class PagesController < ApplicationController
  def home
    @courses = Course.all
  end

  def categories
    @categories = Course::CATEGORIES
  end
end
