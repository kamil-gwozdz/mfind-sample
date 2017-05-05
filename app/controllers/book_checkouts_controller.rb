class BookCheckoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @book_checkouts = BookCheckout.all
  end

end
