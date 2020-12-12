class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(data)
    @@id = data[:id] 
    @name = data[:name] 
    @type = data[:type]
    @db = data[:db] 
  end 
  
  def self.save(name, type, db) 
    sql = <<-SQL
      INSERT INTO STUDENT (name, type)
      VALUES = (?, ?)
    SQL
    
    name = name
    
    db.execute(sql)
  end
end
