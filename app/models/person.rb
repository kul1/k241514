# encoding: utf-8
class Person
  include Mongoid::Document
  # mindapp begin
  include Mongoid::Timestamps
  field :fname, :type => String
  field :lname, :type => String
  field :sex, :type => Integer
  belongs_to :address
  field :dob, :type => Date
  field :phone, :type => String
  field :photo, :type => String
  # mindapp end
end
