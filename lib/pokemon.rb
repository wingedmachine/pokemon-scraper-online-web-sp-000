class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @type = hash[:type]
    @db = hash[:db]
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES ('#{name}', '#{type}')")
  end

  def self.find(id, db)
    select_statement = "SELECT id, name, type FROM pokemon WHERE id = #{id}"
    pokemon_array = db.execute(select_statement).first
    Pokemon.new({ id: id,
                  name: pokemon_array[1],
                  type: pokemon_array[2],
                  db: db })
  end
end
