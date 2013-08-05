class Link < ActiveRecord::Base
  acts_as_taggable
  validates :uri, url: true
end
