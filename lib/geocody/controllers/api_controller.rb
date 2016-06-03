# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module Geocody
  class APIController < BaseController
    @@instance = APIController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [String] address Required parameter: The address or partial address to try and locate
    # @param [String] country_code Required parameter: The ISO 2-letter country code to be biased towards (default is no country bias)
    # @param [String] language_code Required parameter: The language to display results in, available languages are: de, en, es, fr, it, pt, ru
    # @return Result response from the API call
    def lookup(address, 
               country_code, 
               language_code)

      # Validate required parameters
      if address == nil
        raise ArgumentError.new "Required parameter 'address' cannot be nil."
      elsif country_code == nil
        raise ArgumentError.new "Required parameter 'country_code' cannot be nil."
      elsif language_code == nil
        raise ArgumentError.new "Required parameter 'language_code' cannot be nil."
      end

      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_query_parameters _query_builder, {
        'address' => address,
        'country_code' => country_code,
        'language_code' => language_code,
        'api_key' => Configuration.api_key
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json'
      }

      # invoke the API call request to fetch the response
      _response = Unirest.get _query_url, headers: _headers

      # Endpoint error handling using HTTP status codes.
      if _response.code == 404
        return nil
      end

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Try to cast response to desired type
      if _response.body.instance_of? Hash
        begin
          Result.from_hash(_response.body)
        rescue Exception
          raise APIException.new "Invalid JSON returned.", _response.code, _response.body
        end
      end
    end
  end
end
