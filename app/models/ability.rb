class Ability
include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, Article
      can :manage, Comment
    else
      can :read, :all
    end
  end
end