class Repo
  include DataMapper::Resource
  
  def self.default_repository_name; :dm_git_repo; end
  
  property    :name,         String, :key => true
  property    :description,  Text
  property    :url,          String
  property    :owner,        String

  belongs_to :account
end

#{"description": "simple git bindings - example project for Pro Git book", "watchers": 1, "forks": 0, "name": "simplegit-progit", "private": false, "url": "http://github.com/schacon/simplegit-progit", "fork": false, "owner": "schacon", "homepage": ""}