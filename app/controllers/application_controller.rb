class ApplicationController < ActionController::Base
  def default_url_options
    { host: ENV["https://www.whatsin.digital/"] || "localhost:3000" }
  end
end
