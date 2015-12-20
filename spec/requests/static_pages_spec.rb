require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /static_pages' do
    it 'static pages home works!' do
      get '/home'
      expect(response).to have_http_status(200)
    end

    it 'static pages contacts works!' do
      get '/contacts'
      expect(response).to have_http_status(200)
    end

    it 'static pages about works!' do
      get '/about'
      expect(response).to have_http_status(200)
    end
  end
end
