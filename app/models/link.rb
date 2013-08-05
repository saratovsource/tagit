class Link < ActiveRecord::Base
  validates :uri, url: true
end
