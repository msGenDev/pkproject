module ApplicationHelper
  
  def view_id
    return 'home' if controller.action_name == 'home'
    controller.controller_name
  end
end
