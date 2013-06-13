class Account < ActiveRecord::Base
  state_machine initial: :active do
    state :active
    state :inactive
  end
end
