class WelcomeController < ApplicationController
  def index
    # BAD - slow response time
    # @animals = Animal.all

    #BEST Practice - faster
    @animals = Animal.paginate(page: params[:page], per_page: 6)

  end
end
