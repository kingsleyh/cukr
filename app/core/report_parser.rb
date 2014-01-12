require 'other'

class ReportParser

  attr_reader :features

  def initialize(json)
    @features = process_features(json)
  end

  def process_features(json)
    features = []
    exists?(json, :feature) do |feature_list|
      feature_list.each_with_index do |f, i|
        feature = Feature.new(i, f['name'],f['description'],f['keyword'],f['line'],f['id'])
        process_scenarios(f, feature)
        features << feature
      end
    end
    features
  end

  def process_scenarios(f, feature)
    exists?(f['elements'], :scenario) do |scenarios|
      scenarios.each_with_index do |sc, sci|
        scenario = Scenario.new(sci, f['name'], f['description'], f['keyword'], f['line'])
        process_steps(sc, scenario)
        feature.scenarios(scenario)
      end
    end
  end

  def process_steps(sc, scenario)
    exists?(sc['steps'], :step) do |steps|
      steps.each_with_index do |st, sti|
        step = Step.new(sti, st['name'], st['keyword'], st['line'], st['match'])
        exists?(st['result'],:result) do |r|
         step.result = Result.new(r['status'],r['duration'])
        end
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