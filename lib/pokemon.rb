class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @type = hash[:type]
    @db = hash[:db]
  end

  def self.save(name, type, db)
    command = "INSERT INTO pokemon (name, type) VALUES (#{name}, #{type})"
    binding.pry
    db.execute(command)
  end
end
