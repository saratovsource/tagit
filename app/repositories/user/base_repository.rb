module User
  class BaseRepository < ::Repositories::Base
    attr_reader :account

    def initialize(account)
      @account = account
    end
  end
end
