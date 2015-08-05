# Write code here
class School
  attr_accessor(:roster)

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    sorted = roster.sort.map.to_h
    sorted.each do |key,value|
      value.sort_by! {|name| name[0]}
    end
  end
end 