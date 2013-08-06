class Link < ActiveRecord::Base
  belongs_to :account

  acts_as_taggable
  validates :uri, url: true
  validates :account, presence: true
end
