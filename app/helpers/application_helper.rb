module ApplicationHelper
  
  def google_font_link_tag(family, text = "pkProject")
    tag('link', {:rel => :stylesheet, :type => Mime::CSS, :href => "http://fonts.googleapis.com/css?family=#{family}?text=#{text}"}, false, false)
  end
  
  def view_id
    return 'home' if controller.action_name == 'home'
    controller.controller_name
  end
  
  def show_search_box
    render 'shared/search_box' unless controller.controller_name == 'search'
  end
  
  def show_links
    return render 'shared/standard_links' unless controller.action_name == 'home'
    render 'shared/home_links'
  end
  
  def show_header_nav
    render 'shared/header_nav' unless controller.action_name == 'home'
  end
  
end
