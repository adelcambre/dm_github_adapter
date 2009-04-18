class Account
  include DataMapper::Resource
  
  property :name, String, :key => true
  
  has n, :repos
end