module ApplicationHelper

  def rootOrServicesOrContact?
    current_page?(root_path) || current_page?("/services/#{params[:service]}") || current_page?(:controller => "contacts", :action => "new" || "create")
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def resource_class
    User
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
