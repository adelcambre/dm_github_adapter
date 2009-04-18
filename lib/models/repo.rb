class Repo
  include DataMapper::Resource
  
  def self.default_repository_name; :github_repo; end
  
  property    :name,         String, :key => true
  property    :description,  Text
  property    :url,          String
  property    :owner,        String

end

