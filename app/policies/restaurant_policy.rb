class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update_picture?
    true if user.restaurant_id == @restaurant.id
  end

  def show?
    true # tous les visiteurs et users peuvent voir toues les restaurants (sauf ceux non validés, mais sera filtré autre part)
  end

  def create?
    true # tous les visiteurs, users, et owners peuvent creer un restaurant (qui sera ensuite validé par la team)
  end

  def update?
    record.user == user # seuls le owner du restaurant et les admins (tbd plus tard) peuvent update
  end

  def destroy?
    record.user == user # seuls le owner du restaurant et les admins (tbd plus tard) peuvent destroy
  end
end
