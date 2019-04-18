class ShopPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
 # quien puede crear una tienda ?
  def new?
    return true

  end

  def create?
    return new?

  end

  def show?
    return true

  end
  def update?
    record.user == user

  end




  def destroy?
    record.user == user

  end
end
