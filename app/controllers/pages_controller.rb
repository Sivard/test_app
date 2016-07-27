class PagesController < MainController
  def index
    @collection = policy_scope(Page)
  end
end