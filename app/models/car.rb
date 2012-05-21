class Car < PoweredVehicle

	# class methods
	def self.red
		where "properties @> 'color => red'"
	end

	def self.cylinders( number )
		where ( "(properties -> 'cylinders')::int = #{ number }" )
	end

	private

	def setup
		super
		self.properties = self.properties.merge( { "body_type" => "coupe", "color" => "", "cylinders" => "0", "performance_rating" => "0" } )
	end
end