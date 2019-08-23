class EmailError < StandardError; end
class IdError < StandardError; end
class NamesError < StandardError; end
class UserDataError < StandardError; end

module Validation

  # field validations create method
  def validate_fields(data)
    %i[email first_name last_name age address].each do |method|
      send("validate_#{method}", data)
    end
  end

  # for create method
  def validate_email(data)
    field_empty?('email', data[:email])
    email_exist?(data)
    email_valid?(data)
  end

  # envia los metodos con los parametros a los metodos de validación
  def validate_first_name(data)
    %i[field_empty? field_float?].each do |method|
      send(method, 'first_name', data[:first_name])
    end
  end

  def validate_last_name(data)
    %i[field_empty? field_float?].each do |method|
      send(method, 'last_name',data[:last_name])
    end
  end

  def validate_age(data) 
    %i[field_empty? field_float?].each do |method|
      send(method, 'age',data[:age])
    end
  end

  def validate_address(data)
    %i[field_empty? field_float?].each do |method|
      send(method, 'Address', data[:address])
    end
  end

  #--------------------------Field-empty-------------------------------
  def field_empty?(field_name, field)
    (raise UserDataError, "#{field_name} empty") if field == ''
  end

  #---------------------------Field-float-type----------------------------
  def field_float?(field_name, field)
    (raise UserDataError, "#{field_name} must not be float") if field.class == Float
  end

  #--------------------------email-validations----------------------------------
  def email_valid?(data)
    (raise EmailError, 'email has invalid format.') unless data[:email] =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  end

  def email_exist?(data)
    email_find = $users.find { |user| user.data[:email] == data[:email] }
    raise EmailError, 'Email already exists' if email_find
  end

  #------------------------------initialize-------------------------------------
  def validate_data(data)
    (raise UserDataError, 'UserData musn´t be empty') unless data != {}
    (raise UserDataError, 'UserData must be a Hash') unless data.class == Hash
    data
  end

  #----------------------------------find---------------------------------------
  def valid_id(id)
    (raise IdError, 'id must not be empty') if id == ''
    @usr = $users.find{ |user| user.id == id.to_i}
    (raise IdError, 'User no found') unless @usr
    @usr
  end

  #------------------------------update-method----------------------------------
  # validación de campos create method
  def validate_update(data_parameter)
    keys = %i[email first_name last_name age address]
    keys.each do |method|
      send("validate_#{method}", data_parameter) if data_parameter.key?(method.intern)
    end
  end
end
