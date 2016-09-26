module ApplicationHelper
    
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  
   
  def wrap_prepend_input_field(field, icon=nil, hint_text=nil)
    str = "<div class= 'input-group'><span class='input-group-addon'>"
    str << "<i class='#{icon}'></i></span>" unless icon.blank?
    str << field
    str << "</div>"
    str.html_safe
  end
  
end
