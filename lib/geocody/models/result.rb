# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Geocody
  class Result

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :found

    # TODO: Write general description for this method
    # @return [List of Location]
    attr_accessor :locations

    def initialize(found = nil,
                   locations = nil)
      @found = found
      @locations = locations

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        found = hash["found"]
        # Parameter is an array, so we need to iterate through it
        locations = nil
        if hash["locations"] != nil
          locations = Array.new
          hash["locations"].each{|structure| locations << Location.from_hash(structure)}
        end
        # Create object from extracted values
        Result.new(found,
                   locations)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['found'] = found
      hash['locations'] = locations.map(&:key_map)
      hash
    end
  end
end
