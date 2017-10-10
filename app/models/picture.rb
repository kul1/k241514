# encoding: utf-8
class Picture
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :picture, :type => String
  field :description, :type => String
  belongs_to :user
  # mindapp end
end
