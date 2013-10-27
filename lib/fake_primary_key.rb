require "fake_primary_key/version"
require "fake_primary_key/active_record_not_found"

module FakePrimaryKey
  # Your code goes here...
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    
    def primary_key
      begin
        key = super || "id"
      rescue NoMethodError => e
        key = "id"
      end
      key
    end

  end

end