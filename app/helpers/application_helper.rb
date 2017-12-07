module ApplicationHelper
  def rootOrServicesOrContact?
    current_page?(root_path) || current_page?("/services/#{params[:service]}") || current_page?(:controller => "contacts", :action => "new" || "create")
  end

end
