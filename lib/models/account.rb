class Account
  include DataMapper::Resource
  
  property :name, String, :key => true
  
  has n, :repos, :repository => :github_repo, :child_key => [:owner]
end