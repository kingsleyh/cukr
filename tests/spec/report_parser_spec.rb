require 'opal'
require 'jquery'
require 'opal-jquery'
require 'report_parser'
require 'json/test_json'

describe ReportParser do

  it 'should parse a cucumber json file and return features' do
    report = ReportParser.new(TestJson.project1)
    expect(report.features.size).to eq(2)
  end

  it 'should find the correct information for a feature' do
    report = ReportParser.new(TestJson.project1)
    feature = report.features.first
    expect(feature.name).to eq('Account Holder withdraws cash')
  end

end
