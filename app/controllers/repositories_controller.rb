class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = 'a5ffecadbc9eb6c94d4a'
      req.params['client_secret'] = 'a063c31e73e2f0c739a05cb60414e358d5251829'
      req.params['q'] = params[:query]
    end
    result = JSON.parse(resp.body)
    @items = result["items"]

    render :search
  end
end
