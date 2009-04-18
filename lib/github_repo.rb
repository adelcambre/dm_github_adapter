require "rubygems"
require "dm-core"

require File.expand_path(File.join(File.dirname(__FILE__), 'github_repo', 'adapter'))

DataMapper.setup(:github_repo, :adapter  => 'github_repo')
DataMapper.setup(:default, :adapter => "in_memory")

Dir.glob(File.dirname(__FILE__) + '/models/*.rb').each do |f|
  require f
end
