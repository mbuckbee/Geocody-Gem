# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Geocody
  class Location

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

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
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :postal_code

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :longitude

    def initialize(country = nil,
                   country_code = nil,
                   address = nil,
                   city = nil,
                   latitude = nil,
                   state = nil,
                   postal_code = nil,
                   longitude = nil)
      @country = country
      @country_code = country_code
      @address = address
      @city = city
      @latitude = latitude
      @state = state
      @postal_code = postal_code
      @longitude = longitude

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
        country = hash["country"]
        country_code = hash["country_code"]
        address = hash["address"]
        city = hash["city"]
        latitude = hash["latitude"]
        state = hash["state"]
        postal_code = hash["postal_code"]
        longitude = hash["longitude"]
        # Create object from extracted values
        Location.new(country,
                     country_code,
                     address,
                     city,
                     latitude,
                     state,
                     postal_code,
                     longitude)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['country'] = country
      hash['country_code'] = country_code
      hash['address'] = address
      hash['city'] = city
      hash['latitude'] = latitude
      hash['state'] = state
      hash['postal_code'] = postal_code
      hash['longitude'] = longitude
      hash
    end
  end
end
