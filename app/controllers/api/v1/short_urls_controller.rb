class Api::V1::ShortUrlsController < ApplicationController

  def create 
    short_url = SecureRandom.urlsafe_base64(6)
    url = Url.create(short_url: short_url, long_url: request.request_parameters['long_url'] )
    render json: url.serialize, status: 201
  end
end