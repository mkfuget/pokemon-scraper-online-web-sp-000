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
      INSERT INTO pokemon (name, type)
      VALUES = (?, ?)
    SQL
    
    name = name.tr(/[\W\d_]/)
    type = type.tr(/[\W\d_]/)

    db.execute(sql, name, type)
  end
end
