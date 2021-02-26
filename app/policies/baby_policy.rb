class BabyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

   def initialize(user, record)
    @user = user
    @record = record
  end

  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def index?
    true
  end
end
