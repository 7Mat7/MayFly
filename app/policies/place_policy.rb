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

  def post?
    record.bookings.any? { |h| h.guest == user } && record.renter != user
  end

  def book?
    record.bookings.where("bookings.end_date > ?", Time.now).empty? && record.renter != user
    # !record.bookings.where("bookings.end_date > ?", Time.now).any?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
