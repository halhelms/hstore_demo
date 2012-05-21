class Vehicle < Machine

	private

	def setup
		super
		self.properties = self.properties.merge( { "top_speed" => "0" })
	end
end