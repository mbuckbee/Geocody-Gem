# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Geocody
  class Result

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :found

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :postal_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :latitude

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :longitude

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    def initialize(found = nil,
                   country = nil,
                   country_code = nil,
                   postal_code = nil,
                   address = nil,
                   city = nil,
                   latitude = nil,
                   longitude = nil,
                   state = nil)
      @found = found
      @country = country
      @country_code = country_code
      @postal_code = postal_code
      @address = address
      @city = city
      @latitude = latitude
      @longitude = longitude
      @state = state

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
        country = hash["country"]
        country_code = hash["country_code"]
        postal_code = hash["postal_code"]
        address = hash["address"]
        city = hash["city"]
        latitude = hash["latitude"]
        longitude = hash["longitude"]
        state = hash["state"]
        # Create object from extracted values
        Result.new(found,
                   country,
                   country_code,
                   postal_code,
                   address,
                   city,
                   latitude,
                   longitude,
                   state)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['found'] = found
      hash['country'] = country
      hash['country_code'] = country_code
      hash['postal_code'] = postal_code
      hash['address'] = address
      hash['city'] = city
      hash['latitude'] = latitude
      hash['longitude'] = longitude
      hash['state'] = state
      hash
    end
  end
end
