class Feature
  attr_reader :index, :name, :description, :keyword, :line, :id, :scenarios, :tags

  def initialize(index, name, description, keyword, line, id)
    @index = index
    @name = name
    @description = description
    @keyword = keyword
    @line = line
    @id = id
    @scenarios = []
    @tags = []
  end

  def scenarios(scenario_list)
    @scenarios << scenario_list
  end

  def tags(tag_list)
    @tags << tag_list
  end
end


class Scenario
  attr_reader :index, :name, :description, :keyword, :line, :steps

  def initialize(index, name, description, keyword, line)
    @index = index
    @name = name
    @description = description
    @keyword = keyword
    @line = line
    @steps = []
  end

  def steps(step_list)
    @steps << step_list
  end
end

class Result
  attr_reader :status, :duration
  def initialize(status,duration)
    @status = status
    @duration = duration
  end
end

class Step
  attr_reader :index, :name, :keyword, :line, :match, :rows
  attr_accessor :result

  def initialize(index, name, keyword, line, match)
    @index = index
    @name = name
    @keyword = keyword
    @line = line
    @match = match
    @rows = []
  end

  def rows(row_list)
    @rows << row_list
  end

end

class Row
  attr_reader :index, :cells

  def initialize(index)
    @index = index
    @cells = []
  end

  def cells(cell_list)
    @cells << cell_list
  end
end

class Cell
  attr_reader :value

  def initialize(value)
    @value = value
  end
end