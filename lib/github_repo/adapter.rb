require 'httparty'

class GithubRepository
  include HTTParty
  format :json

  def self.find_by_account(name)
    get("http://github.com/api/v2/json/repos/show/#{name}")["repositories"]
  end
end


module DataMapper
  module Adapters
    class GithubRepoAdapter < AbstractAdapter
      def create(resources)
        raise NotImplemented
      end

      def read(query)
        owner = query.conditions.operands.find{|c| c.property == query.model.properties[:owner]}.value
        records = GithubRepository.find_by_account(owner)
        query.filter_records(records)
      end

      def update(attributes, collection)
        raise NotImplemented
      end

      def delete(collection)
        raise NotImplemented
      end

      private

      def initialize(name, options = {})
        super
      end

    end # class InMemoryAdapter

    const_added(:GithubRepoAdapter)
  end # module Adapters
end # module DataMapper
