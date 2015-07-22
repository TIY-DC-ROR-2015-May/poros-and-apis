class Repository
  def initialize name, description, updated_at
    @name = name
    @description = description
    @last_update = Time.parse(updated_at)
  end

  # def name
  #   @name
  # end

  attr_reader :description, :name, :last_update

  # def last_update
  #   "This is a lie"
  # end
end