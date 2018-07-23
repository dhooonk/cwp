class IndexController < ApplicationController

  def main
  end

  def memebers
    @users=User.all
  end

end
