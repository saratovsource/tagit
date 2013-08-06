class Account::Guest
  include Authority::UserAbilities
  def persisted?
    false
  end

  def guest?
    true
  end
end
