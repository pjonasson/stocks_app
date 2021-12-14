require "csv"
require "smarter_csv"

filename = "nasdaq.csv"
options = { :key_mapping => { :unwanted_row => nil, :old_row_name => :new_name } }
n = SmarterCSV.process(filename, options) do |array|
  # we're passing a block in, to process each resulting hash / =row (the block takes array of hashes)
  # when chunking is not enabled, there is only one hash in each array
  Stock.create(array.first)
end
