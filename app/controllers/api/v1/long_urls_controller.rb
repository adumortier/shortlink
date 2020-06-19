class Api::V1::LongUrlsController < ApplicationController

  def show
    url = Url.find_by(short_url: url_params[:short_url])
    return render json: Error.serialize('Requested url does not exist'), status: 404 if url.nil?
    return render json: url.serialize, status: 200
  end

  private

  def url_params
    params.permit(:short_url)
  end

end