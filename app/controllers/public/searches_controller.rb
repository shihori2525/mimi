class Public::SearchesController < ApplicationController
  before_action :authenticate_member!

  def search
    @range = params[:range]
    @word = params[:word]

    @records = if @range == '1'
                 Brand.search_for(@word)
               else
                 Item.search_for(@word)
               end
  end
end
