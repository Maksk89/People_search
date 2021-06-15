class RecordPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def propose?
    true
  end

end