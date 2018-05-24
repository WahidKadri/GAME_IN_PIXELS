class BookingPolicy < ApplicationPolicy

  def new?
    true
  end

  def create?
    new?
  end

  def edit?
    record.console.user == user
  end

  def update?
    edit?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
