require 'opal'
require 'jquery'
require 'opal-jquery'
require 'core/report_parser'

class ReportInformation
  def initialize(features)
    @features = features
  end

end

class Cukr

  def initialize(json)
    @parser = ReportParser.new(json)
    #@report_info = ReportInformation.new(@parser.features)
  end

end

Document.ready? do

  HTTP.get('project.json') do |response|
    Cukr.new(response.json)
  end



end