module User
  class LinksRepository < BaseRepository

    def find(id)
      all.find(id)
    end

    def build
      all.build
    end

    def all
      account.links
    end
  end
end
