module ApplicationHelper
  
  def google_font_link_tag(family, text = "pkProject")
    tag('link', {:rel => :stylesheet, :type => Mime::CSS, :href => "http://fonts.googleapis.com/css?family=#{family}?text=#{text}"}, false, false)
  end
  
  def view_id
    return 'home' if controller.action_name == 'home'
    controller.controller_name
  end
end
