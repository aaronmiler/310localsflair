class ApplicationController < ActionController::Base

  def index
    @flair = Flair.last
  end
end
