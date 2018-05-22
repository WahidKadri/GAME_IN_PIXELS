class ReviewPolicy < ApplicationPolicy

  def new?
    record.booking.user == user
    # current_user
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
