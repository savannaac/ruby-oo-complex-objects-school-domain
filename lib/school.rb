class School
    attr_accessor :roster, :name

    def initialize(name)
        @roster = {}
        @name = name
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each { |k, v| v.sort! }.sort.to_h
    end

end