class EmailError < StandardError; end
class IdError < StandardError; end
class NamesError < StandardError; end
class UserDataError < StandardError; end
module Validation
  
  def validate_data(data)
    (raise UserDataError, 'UserData musn´t be empty') unless data != {}
    (raise UserDataError, 'UserData must be a Hash') unless data.class == Hash
    data
    
  end
  
  #create method
  def email_exist?(data)
    email_find = $users.find { |user| user.data[:email] == data[:email] }
    raise EmailError, 'Email already exists' if email_find
  end
  def email_empty?(data)
    (raise EmailError, 'Email empty') if data[:email] == ''
  end
  def email_string?(data)
    
  end
  def email_valid?(data)
    (raise EmailError, 'email must contain @ and a .') unless (data[:email].include? '@') && (data[:email].include? '.')
  end
  def first_name_empty?(data)
    (raise NamesError, 'First name empty') if data[:first_name] == ''
  end
  def last_name_empty?(data)
    (raise NamesError, 'Last name empty') if data[:last_name] == ''
  end
  def valid_age?(data)
    (raise UserDataError, 'age invalid') if data[:age].to_i <= 0
  end
  def valid_age_float?(data)
    (raise UserDataError, 'age must not be float') if data[:age].include? '.'
  end
  
  # update method
  
  def email_exist?(data_parameter)
    email_find = $users.find { |user| user.data[:email] == data_parameter[:email] }
    raise EmailError, 'Email already exists' if email_find
  end
  def email_empty?(data_parameter)
    (raise EmailError, 'Email empty') if data_parameter[:email] == ''
  end
  def email_valid?(data_parameter)
    (raise EmailError, 'email must contain @ and a .') unless (data_parameter[:email].to_s.include? '@') && (data_parameter[:email].to_s.include? '.') 
  end
  
  def first_name_empty?(data_parameter)
    if data_parameter.has_key?(:first_name)
      (raise NamesError, 'First name empty') if data_parameter[:first_name] == ''
    end
  end
  
  def last_name_empty?(data_parameter)
    if data_parameter.has_key?(:last_name)
      (raise NamesError, 'Last name empty') if data_parameter[:last_name] == ''
    end
  end
  
  def valid_age_float?(data_parameter)
    (raise UserDataError, 'age must not be float') if data_parameter[:age].class == Float
  end
  
  # find Method
  
  def id_is_valid?(id)
    (raise IdError, "ID can't be '0', negative number or string") unless id.to_i > 0
    @usr = $users.find{ |user| user.id == id.to_i}
    (raise IdError, "User no found") unless @usr
    @usr
  end
  
  def id_empty?(id)
    (raise IdError, "id mustn't be empty") if id == ''
  end
  
  def id_float?(id)
    (raise IdError, "Id must not be float") if id.class == Float
  end
end