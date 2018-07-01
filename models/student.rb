class Student < ActiveRecord::Base
  attr_accessor :name, :grade

  STUDENTS = []

  def initialize(params)
    @name = params[:name]
    @grade = params[:grade]
    STUDENTS << self
  end #initialize

  def self.all
    STUDENTS
  end #.all

end #Student class
