LabelGen.configure do |config|
  config.max_number_used = 1800
  config.qr_url = "http://qr.freeridepgh.org/bikes/%{number}"
  config.number_label = "%<number>.05d"
  config.template_name = "Ol875Plain"
  config.output_path = File.expand_path(File.join(File.dirname(__FILE__),'..', '..', 'tmp', 'bike_labels.pdf'))
end
