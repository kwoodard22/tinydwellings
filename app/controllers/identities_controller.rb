class IdentitiesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :identity

  def new
    @identity = env['omniauth.identity']
  end
end
