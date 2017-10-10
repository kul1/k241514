# encoding: utf-8
class Comment
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :body, :type => String
  belongs_to :article
  belongs_to :user
  validates :body, :user_id, :article_id, presence: true
  # mindapp end
end
