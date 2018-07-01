class Course < ActiveRecord::Base

  attr_accessor :name, :topic

  COURSES = []

  def initialize(args)
    @name = args[:name]
    @topic = args[:topic]

    COURSES << self
  end #initialize

  def self.all
    COURSES
  end #.all

end #Course class
