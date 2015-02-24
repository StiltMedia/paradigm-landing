class PagesController < ApplicationController
  skip_before_filter :authenticate_admin_user!
  def home
    @clients = Client.order("id DESC").limit(3)
  end

  def about
  end

  def services
  end

  def soccer
  end

  def basketball
  end

  def mma
  end

  def football
  end

  def sports
  end

  def thanks
  end
end
