class RepositoriesController < ApplicationController

  def search
    @resp = Faraday.get '' do |req|
      req.params['client_id'] = a5ffecadbc9eb6c94d4a
      req.params['client_secret'] = a063c31e73e2f0c739a05cb60414e358d5251829
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'

  end

  def github_search
  end
end
