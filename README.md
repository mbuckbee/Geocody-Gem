
<p align="center">
  <img src="https://app.expeditedaddons.com/geocody.png"/>
  
</p>

<h1 align='center'>Geocody</h1>

## Convert mailing addresses into Lat,Long Coordinates

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/geocody

- Ruby v2.x or greater

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`address`|string|The address or partial address to try and locate|
|1|`country_code`|string|The ISO 2-letter country code to be biased towards (default is no country bias)|
|2|`language_code`|string|The language to display results in, available languages are: de, en, es, fr, it, pt, ru|



### Making a Request

```ruby
require 'geocody'

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

$ > require 'geocody'
=> true

$ > gc = Geocody::APIController.new
=> #<Geocody::APIController:0x007fd4cca9ef40>

$ > result = gc.lookup("1432 Greenbrier Pkwy, Chesapeake, VA 23320", "US", "EN")
=> #<Geocody::Result:0x007fd4cda8f328 @found=1, @locations=[#<Geocody::Location:0x007fd4cda8f350 @country="United States of America", @country_code="us", @address="Pop's Diner, 1432, Greenbrier Parkway, Chesapeake, Chesapeake City, Virginia, 23320, United States of America", @city="Chesapeake City", @latitude=36.77782295, @state="Virginia", @postal_code="23320", @longitude=-76.2315181468951>]>
```

### Using Results

```ruby
$ > result.found
=> 1

$ > result.locations[0].country
=> "United States of America"

$ > result.locations[0].country_code
=> "us"

$ > result.locations[0].address
=> "Pop's Diner, 1432, Greenbrier Parkway, Chesapeake, Chesapeake City, Virginia, 23320, United States of America"

$ > result.locations[0].city
=> "Chesapeake City"

$ > result.locations[0].postal_code
=> "23320"

$ > result.locations[0].latitude
=> 36.77782295

$ > result.locations[0].longitude
=> -76.2315181468951
```




## Installation

```
# In your Gemfile
gem 'geocody', git: 'https://github.com/mbuckbee/Geocody-Gem.git'
```    


## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`found`|string|Number of addresses found matching the mailing address given|
|`country`|string|Full name of the located country|
|`country_code`|string|ISO country code of the located address|
|`postal_code`|string|Postal code of the location|
|`address`|string|The address that was used for location lookup|
|`city`|string|City of the located address|
|`latitude`|float|Latitude of the address|
|`longitude`|float|Longitude of the located address|
|`state`|string|State or Region of the located address|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.geocodyexp.apiary.io/

You will need your `GEOCODY_API_KEY` from the setup screen where you've provisioned the Geocody add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://geocody.expeditedaddons.com/?address=1432+Greenbrier+Pkwy%2C+Chesapeake%2C+VA+23320&api_key=REPLACE_WITH_YOUR_GEOCODY_API_KEY&country_code=US&language_code=en'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The Geocody gem relies upon the environment variable `ENV['GEOCODY_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use Geocody in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[GEOCODY_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The Geocody gem is licensed under the MIT license.

## Additional Add-ons

If you found Geocody useful, please check out our other similarly structured services and gems.

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>





