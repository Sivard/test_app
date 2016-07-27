module ApplicationHelper
  def bootstrap_class_for(flash_type)
    case flash_type
      when 'success'
        'alert-success'
      when 'notice'
        'alert-info'
      when 'error'
        'alert-danger'
      when 'alert'
        'alert-warning'
      else
        flash_type.to_s
    end
  end
  
  def actions_for
    Button.where('roles @> ?', "{#{current_user.role}}")
  end

  def menu_for(align = 'left')
    Menu.where('roles @> ?', "{#{current_user.role}}")
  end
end
