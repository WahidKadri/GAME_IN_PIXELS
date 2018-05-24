class ConsolePolicy < ApplicationPolicy
  def home?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    new?
  end

  def edit?
    record.user == user
  end

  def update?
    edit?
  end


  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
