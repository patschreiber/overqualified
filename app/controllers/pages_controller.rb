class PagesController < ApplicationController

  def about
    @header = "The pleasure is all ours..."
  end

  def lookbook
    @header = "Lookbook"
  end

  def terms
  end
end