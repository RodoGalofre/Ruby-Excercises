require_relative 'User_Validation.rb'
class User
  include Validation
  attr_accessor :id, :data
  $users = []
  
  def initialize(data)
    @id ||= nil
    @data = validate_data(data)
    
  end
  def create   
    email_empty?(data)
    email_exist?(data)
    email_string?(data)
    email_valid?(data)
    first_name_empty?(data)
    last_name_empty?(data)
    valid_age?(data)
    valid_age_float?(data)
    @id = $users.length + 1
    $users << self
  end
  
  class << self
    include Validation
    def all
      @@users
    end
    
    def find(id)
      id_empty?(id)
      id_float?(id)
      id_is_valid?(id)
    end
    
    def where(find_usr)
      query = []
      find_usr.each_key do |k|
        $users.each do |user|
          if user.data.member?(k) && user.data[k] == find_usr[k]
            query << user
          end
        end
      end
      query
    end
    
    def count
      $users.length
    end
  end
  
  def update(data_parameter)
    data_parameter.each_key{|key|  data_parameter.delete(key) if !@data.has_key?(key)} 
    first_name_empty?(data_parameter)
    last_name_empty?(data_parameter)
    valid_age_float?(data_parameter)
    email_empty?(data_parameter)
    email_exist?(data_parameter)
    email_valid?(data_parameter)
    @data.merge!(data_parameter)
  end
  
  def destroy
    $users.delete(self)
  end
end