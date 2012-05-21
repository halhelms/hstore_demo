class PoweredVehicle < Vehicle

	private

	def setup
		super
		self.properties = self.properties.merge( { "fuel_type" => "gasoline" } )
	end
end