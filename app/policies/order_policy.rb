class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    return true

  end
#new code added to try to solve problem with polciy, delete if its needed
  def create?
    return new?

  end

  def show?

   if record.user == user
    return true
    end



  end
end
