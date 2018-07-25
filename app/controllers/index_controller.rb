class IndexController < ApplicationController

  def main
    @notices = Notice.all.order('created_at DESC').limit(5)

    @programs = Program.all.limit(5)
  end

  def members
    @users=User.all
  end

end
