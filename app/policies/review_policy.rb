class ReviewPolicy < ApplicationPolicy

  def new?
    user.booked_consoles.include?(record.booking.console)
  end

  def create?
    new?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
