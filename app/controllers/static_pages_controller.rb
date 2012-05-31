class StaticPagesController < ApplicationController
  def home
@title="Home"
  end
  def about
@title="Help"
  end
  def help
@title="About"
  end
end
