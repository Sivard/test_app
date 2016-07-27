class PagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin? || user.director?
        scope.all
      else
        scope.where("body LIKE ?", "%#{user.role}%")
      end
    end
  end
end