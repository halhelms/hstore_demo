module PropertyHash

	def property( name, value = "|\| |_| |_ |_" )
		unless value == "|\| |_| |_ |_"
			h = { "#{name}" => value }
			self.properties = self.properties.merge( h )
		else
			self.properties[ name ]
		end
	end

	def property?( name )
		self.properties[ name ].present?
	end

	private

	def setup
		self.properties = {}
	end
end