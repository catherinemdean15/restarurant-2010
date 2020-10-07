class Restaurant
  attr_reader :opening_time, :name, :dishes
  def initialize (opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(hours_open)
    close = @opening_time.to_i + hours_open
      p "#{close}:00"
  end

  def add_dish(dish)
    @dishes << dish.upcase
  end

  def menu_dish_names
      p @dishes
  end

  def open_for_lunch?
    if @opening_time.to_i <=12
      open = true
    else
      open = false
    end
  end
end
