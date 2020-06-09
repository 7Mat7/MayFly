class PlacePolicy < ApplicationPolicy
  def create?
    return true
  end

  def show?
    return true
  end

  def update?
    record.renter == user
  end

  def destroy?
    record.renter == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
