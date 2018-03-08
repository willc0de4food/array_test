require 'will_paginate/array'
class HomeController < ApplicationController
  def index
  	page = params[:page].present? ? params[:page].to_i : 1
    per_page = params[:per_page].present? ? params[:per_page].to_i : 10
  	@quotes = Testimonial.quotes.paginate(page: page, per_page: per_page)
  end
end
