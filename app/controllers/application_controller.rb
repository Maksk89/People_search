class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized, except: :index, unless: :devise_or_admin_controller?
  after_action :verify_policy_scoped, only: :index, unless: :devise_or_admin_controller?
  def devise_or_admin_controller?
    devise_controller? || params[:controller] =~ /admin\/.*/
  end
end


