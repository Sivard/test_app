module ApplicationHelper
  def actions_for
    Button.where('roles @> ?', "{#{current_user.role}}")
  end

  def menu_for(align = 'left')
    Menu.where('roles @> ?', "{#{current_user.role}}")
  end
end
