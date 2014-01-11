require 'opal'
require 'jquery'
require 'opal-jquery'


class Feature
  attr_reader :index, :name, :scenarios

  def initialize(index, name)
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

  def initialize(index, name)
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

  def initialize(index, name)
    @index = index
    @name = name
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

class ReportInformation
  def initialize(features)
    @features = features
  end


end

class ReportParser

  attr_reader :features

  def initialize(json)
    @features = process_features(json)
  end

  def process_features(json)
    features = []
    exists?(json, :feature) do |feature_list|
      feature_list.each_with_index do |f, i|
        feature = Feature.new(i, f['name'])
        process_scenarios(f, feature)
        features << feature
      end
    end
    features
  end

  def process_scenarios(f, feature)
    exists?(f['elements'], :scenario) do |scenarios|
      scenarios.each_with_index do |sc, sci|
        scenario = Scenario.new(sci, f['name'])
        process_steps(sc, scenario)
        feature.scenarios(scenario)
      end
    end
  end

  def process_steps(sc, scenario)
    exists?(sc['steps'], :step) do |steps|
      steps.each_with_index do |st, sti|
        step = Step.new(sti, st['name'])
        process_rows(st, step)
        scenario.steps(step)
      end
    end
  end

  def process_rows(st, step)
    exists?(st['rows'], :step) do |rows|
      rows.each_with_index do |r, ri|
        row = Row.new(ri)
        r['cells'].each_with_index do |c, ci|
          row.cells(Cell.new(c))
        end
        step.rows(row)
      end
    end
  end

  private
  def exists?(item, item_type)
    if item.nil? or item.empty?
      puts "no #{item_type} found"
    else
      yield item
    end
  end

end

class Cukr

  def initialize(json)
    @parser = ReportParser.new(json)
    @report_info = ReportInformation.new(@parser.features)
  end

end

Document.ready? do

  HTTP.get('project.json') do |response|
    Cukr.new(response.json)
  end

end