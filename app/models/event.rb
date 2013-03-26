class Event 

	attr_accessor :name, :address, :location, :date_as_text, :talks,:latitude,:longitude

  CUPERTINO_LOCATION = {:latitude => 37.334815, :longitude => -122.029781}

	def self.mock_event

		mock_event = Event.new
		mock_event.name = "Mi casa"
		mock_event.address = "Corazón de María 4,Madrid 28002"
    mock_event.date_as_text = "Test text"
		mock_event.get_coordinates
    mock_event.talks = [Talk.mock_talk, Talk.mock_talk]
    mock_event
	end		


  def get_coordinates
    completion_block = lambda do |placemark, error|
      @latitude = placemark[0].location.coordinate.latitude
      @longitude = placemark[0].location.coordinate.longitude
      self.location = CLLocationCoordinate2DMake( @latitude, @longitude )

    end
    CLGeocoder.alloc.init.geocodeAddressString(self.address, completionHandler: completion_block)
  end
end
