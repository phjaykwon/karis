class Ability
  include CanCan::Ability

  def initialize(user)

    #User types: admin, user, lurker (non-user)

    #abilities

        

    #check how has_many... works
    #find a way to allow access iff as chord's user = user
        
    # => members can [:read, :update, :destroy], Chord, made by user
            #can :read, Artist
    # => lurker can :read, [Chord, Artist] ... can :read, [Chord, Artist]



    # Define abilities for the passed in user here. For example:
    #
    #Eric's attempt at ability but it may break everything so I commented it out
    #user ||= User.new # guest user (not logged in)
    #if user.has_role? :admin
    #    can :manage, :all
        
    #elsif user.has_role? :member
        #can [:update, :destroy],  #their own songs
    #    can :read, [Chord, Artist], :all

    #elsif user.has_role? :lurker
    #    can :read, [Chord, Artist], :all

        
    #can :read, :all
    #end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
