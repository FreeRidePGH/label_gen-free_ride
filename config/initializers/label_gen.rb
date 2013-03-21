LabelGen.configure do |config|
  config.max_number_used = 1600
  config.qr_url = "http://qr.freeridepgh.org/bikes/%{number}"
  config.number_label = "%<number>.05d"
end
