class CategoryPolicy < BasePolicy
  private def method_missing(symbol, *args)
    Current.user.admin?
  end
end