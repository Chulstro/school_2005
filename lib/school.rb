

class School
  @time = {9 => "9:00", 10 => "10:00", 11 => "11:00",
        12 => "12:00",
        13 => "13:00",
        14 => "14:00",
        15 => "15:00",
        16 => "16:00"}

  attr_reader :hours_in_school_day,
              :start_time,
              :student_names

  def initialize(start_time,hours)
    @hours_in_school_day = hours
    @start_time = start_time
    @student_names = []
  end

  def add_student_name (name)
    real_name = name.capitalize
    @student_names << real_name
  end

  def end_time
    time = @start_time.to_i + @hours_in_school_day
    time.to_s.concat(":00")
  end

  def is_full_time?
    if @hours_in_school_day >= 4
      true
    else
      false
    end
  end

  def convert_end_time_to_clock_time
    time = @start_time.to_i + @hours_in_school_day
    if time >= 12
      time2 = time - 12
    else time2 = time
    end
    time2.to_s.concat(":00")
  end


end
