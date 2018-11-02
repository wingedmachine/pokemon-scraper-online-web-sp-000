class Pokemon
  attr_reader :id, :name, :type, :db

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @type = hash[:type]
    @db = hash[:db]
  end
end
