require 'rails_helper'

describe 'ShortUrl Endpoint' do

  it 'creates a short url given a long url' do
    post '/api/v1/shorturls', :params => {long_url: "http://www.google.com/calendar"}
    expect(response.status).to eq(201)
    url = JSON.parse(response.body)['data']['attributes']
    expect(url['long_url']).to eq('http://www.google.com/calendar')
    expect(url['short_url']).to_not be_empty
  end

end