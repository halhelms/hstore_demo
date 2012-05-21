include PropertyHash
# must have column called properties of type hstore

class Machine < ActiveRecord::Base
	after_create :setup 
end
