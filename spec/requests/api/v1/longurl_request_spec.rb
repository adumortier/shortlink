require 'rails_helper'

describe 'Long Url Endpoint' do

  it 'returns the long url matching the short url' do
    post '/api/v1/shorturls', :params => {long_url: "http://www.longurl.com/ksjfkshdf"}
    short_url = JSON.parse(response.body)['data']['attributes']['short_url']
    get "/api/v1/longurls/#{short_url}"
    expect(response.status).to eq(200)
    url = JSON.parse(response.body)['data']['attributes']
    expect(url['long_url']).to eq('http://www.longurl.com/ksjfkshdf')
  end

  it 'returns an error if the short url given does not exist' do
    get '/api/v1/longurls/3q2q974wwr9273'
    expect(response.status).to eq(404)
    url = JSON.parse(response.body)['data']['attributes']
    expect(url['message']).to eq('Requested url does not exist')
  end

end