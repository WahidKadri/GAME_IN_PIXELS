class BookingPolicy < ApplicationPolicy

  def new?
    true
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
