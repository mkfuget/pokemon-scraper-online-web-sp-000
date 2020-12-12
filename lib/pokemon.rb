class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(data)
    @@id = data[:id] 
    @name = data[:name] 
    @type = data[:type]
    @db = data[:db] 
  end 
  
  
end
