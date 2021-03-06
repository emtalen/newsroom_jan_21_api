class Article < ApplicationRecord
  enum article_type: [:experience, :story]

  validates_presence_of :article_type, :title, :body, :teaser, :location
end