class PagesController < ApplicationController

  def about
    @header = "Meet us"
  end

  def lookbook
    @header = "Lookbook"
  end

  def terms
  end
end