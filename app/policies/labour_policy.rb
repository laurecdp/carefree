class LabourPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end

  def show?
    true
  end 

  def edit?
    update?
  end
end
