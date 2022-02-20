class Public::SearchesController < ApplicationController
	before_action :authenticate_member!

  def search
    @range = params[:range]
		@word = params[:word]

		if @range == '1'
			@records = Brand.search_for(@word)
		else
			@records = Item.search_for(@word)
		end
  end
end
