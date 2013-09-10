class LinkAuthorizer < ApplicationAuthorizer
  class << self
    def creatable_by?(user)
      !user.guest?
    end

    def readable_by?(user)
      !user.guest?
    end

    def updatable_by?(user)
      !user.guest?
    end

    def deletable_by?(user)
      !user.guest?
    end
  end

  def updatable_by?(user)
    resource.account == user
  end

  def updatable_by?(user)
    resource.account == user
  end
end
