class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: :profile
  def default_url_options
    { host: ENV["https://www.whatsin.digital/"] || "localhost:3000" }
  end
end
