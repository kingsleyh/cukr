require 'opal'
require 'jquery'
require 'opal-jquery'


class Feature
  attr_reader :index, :name, :scenarios
  def initialize(index,name)
    @index = index
    @name = name
    @scenarios = []
  end

  def scenarios(scenario_list)
    @scenarios << scenario_list
  end
end

class Scenario
  attr_reader :index, :name, :steps
  def initialize(index,name)
    @index = index
    @name = name
    @steps = []
  end

  def steps(step_list)
    @steps << step_list
  end
end

class Step
  attr_reader :index, :name, :rows
  def initialize(index,name)
    @index = index
    @name = name
    @rows = []
  end

  def rows(row_list)
    @rows << row_list
  end
end

class Row
  attr_reader :index,:cells
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

class ReportInformation
  def initialize()

  end
end

class ReportParser

  def initialize(json)
    @json = json
  end

  def process
    features = []
    p 1
    @json.each_with_index do |f,i|
      p 2
      feature = Feature.new(i,f['name'])
      f['elements'].each_with_index do |sc,sci|
        p 3
        scenario = Scenario.new(sci,f['name'])
        sc['steps'].each_with_index do |st,sti|
          p 4
          step = Step.new(sti,st['name'])
          st['rows'].each_with_index do |r,ri|
            p 5
            row = Row.new(ri)
            r['cells'].each_with_index do |c,ci|
              row.cells(Cell.new(c))
            end
            step.rows(row)
          end
          scenario.steps(step)
        end
        feature.scenarios(scenario)
      end
    p features << feature
    end
  end


end








Document.ready? do

  HTTP.get('project.json') do |response|
    ReportParser.new(response.json).process
    #p response.json.size
  end

end