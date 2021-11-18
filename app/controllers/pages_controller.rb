class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @courses = Course.all
  end

  def categories
    @categories = Course::CATEGORIES
  end
end
