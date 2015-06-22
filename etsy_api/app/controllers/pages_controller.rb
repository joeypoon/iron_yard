class PagesController < ApplicationController

  def index
    hash = JSON.parse(HTTP.get("https://openapi.etsy.com/v2/listings/active?api_key=#{ENV.fetch("ETSY_API_KEY")}&includes=MainImage")).to_hash
    @filtered_array = hash["results"].take(10).map { |item| { title: item["title"], price: item["price"], image: item["MainImage"]["url_170x135"] } }
  end

end
