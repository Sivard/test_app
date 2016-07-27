class UsersController < MainController
  def index
    @users = User.all
  end

  def update
    user = User.find params[:id]

    if user.update_attributes(user_params)
      flash[:notice] = "Вы успешно поменяли роль на #{user.role}!"
    else
      flash[:error] = 'Что то пошло не так и роль не поменялась...'
    end
    redirect_to root_path
  end

private
  def user_params
    params.require(:user).permit(:role)
  end
end