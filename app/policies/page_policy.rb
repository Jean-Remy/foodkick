class PagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def home?
    true # tous les visiteurs et users peuvent voir toues les restaurants (sauf ceux non validés, mais sera filtré autre part)
  end

end
