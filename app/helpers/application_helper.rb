module ApplicationHelper
  def actions_for(user)
    Button.where('roles @> ?', "{#{current_user.roles}}")
  end
end
