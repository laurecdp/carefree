class PatientPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.user == user
  end

  def create?
    return true
  end

  def update?
    record.user == user
  end
end
