require "chicago_library_index/version"
require "unirest"

module ChicagoLibraryIndex
  class Library

    attr_reader :zip, :phone, :address, :hours_of_operation, :name_, :city

    def initialize(library_api_info)
      @zip = library_api_info["zip"]
      @phone = library_api_info["phone"]
      @teacher_in_the_library = library_api_info["teacher"]
      @website = library_api_info["website"]["url"]
      @address = library_api_info["address"]
      @hours_of_operation = library_api_info["hours"]
      @state = library_api_info["state"]
      @cybernavigator = library_api_info["cybernavigator"]
      @name_ = library_api_info["name_"]
      @city = library_api_info["city"]
    end

    def self.all
      api_array = Unirest.get('https://data.cityofchicago.org/resource/x8fc-8rcq.json').body
      create_libraries(api_array)
    end

    def self.search(search_keyword)
      api_array = Unirest.get("https://data.cityofchicago.org/resource/x8fc-8rcq.json?$q=#{search_keyword}").body
      create_libraries(api_array)
    end

    def self.create_libraries(api_array)
      libraries = []
      api_array.each do |library_info|
        libraries << Library.new(library_info)
      end
      libraries
    end

    def self.find_by(search_attribute, search_keyword)
      api_array = api_array = Unirest.get('https://data.cityofchicago.org/resource/x8fc-8rcq.json').body
      create_libraries(api_array)["search_attribute"]["search_keyword"]

    end

    def self.first
      api_array = Unirest.get('https://data.cityofchicago.org/resource/x8fc-8rcq.json').body
      create_libraries(api_array).first
    end

    def self.last
      api_array = Unirest.get('https://data.cityofchicago.org/resource/x8fc-8rcq.json').body
      create_libraries(api_array).last

    end
    private_class_method :create_libraries
  end
end

# find_by first last