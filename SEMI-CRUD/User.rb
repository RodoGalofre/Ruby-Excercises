require_relative 'User_Validation.rb'

class User
  include Validation
  attr_accessor :id, :data

  $users = []
  @@old_id = 0

  def initialize(data)
    @data = validate_data(data)
  end

  class << self
    include Validation

    def all
      $users
    end

    def find(id)
      valid_id(id)
    end

    def where(find_usr)
      $users.select { |user| user.data >= find_usr }
    end

    def count
      $users.length
    end
  end

  def create
    validate_fields(data)
    @@old_id += 1
    @id = @@old_id
    $users << self
    self
  end

  def update(data_parameter)
    data_parameter.each_key{ |key| data_parameter.delete(key) unless @data.has_key?(key)}
    validate_update(data_parameter)
    @data.merge!(data_parameter)
  end

  def destroy
    $users.delete(self)
  end
end
