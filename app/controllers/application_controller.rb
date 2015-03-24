class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 # protect_from_forgery with: :exception 	
 # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #  protect_from_forgery unless: -> { request.format.json? }
 # protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }
  #after_filter :set_access_control_headers

  # def self.allow_cors(*methods)
  #   before_filter :cors_before_filter, :only => methods
  #   skip_before_action :verify_authenticity_token

  #   # Rails recommends to use :null_session for APIs
  #   # protect_from_forgery with: :null_session, :only => methods
  # end

protect_from_forgery with: :exception

  # def set_access_control_headers
  #   headers['Access-Control-Allow-Origin'] = "*"
  #   headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
  # end

  # def cors_before_filter
  #   # Check that the `Origin` field matches our front-end client host
  #   if /\Ahttps?:\/\/localhost:8888\z/ =~ request.headers['Origin']
  #     headers['Access-Control-Allow-Origin'] = request.headers['Origin']
  #     headers['Access-Control-Allow-Methods'] = 'GET, POST, OPTIONS' # allow GET POST and OPTIONS
      
  #   end
  # end
end

