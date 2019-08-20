require 'minitest/autorun'
require_relative 'User.rb'
require 'minitest/spec'
require "minitest-spec-context"

describe User, 'Crud tests ' do
  #---------------------------------------------------------------------------------------------------------------------------
  #initialize test
  
  context 'when data is initialized with an object other than a hash' do
    it 'is return error' do
      err = lambda {user1 = User.new('io')}.must_raise (UserDataError)
      err.message.must_match('UserData must be a Hash')
    end
  end
  #---------------------------------------------------------------------------------------------------------------------------
  # Tests for create method
  context 'when create method gets a email empty' do
    it "is return" do
      err = lambda {user1 = User.new({ first_name:"usuario1", last_name:"apellido usuario1", email:"", age: 21, address: 'cra 23 # 44 - 32'}).create}.must_raise (EmailError)
      err.message.must_match('Email empty')
    end
  end
  
  context 'When email is already insert' do
    it "is return" do
      user1 = User.new({ first_name:"usuario1", last_name:"apellido usuario1", email:"email@user1.com", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {user2 = User.new({ first_name:"usuar1", last_name:"apellido usu", email:"email@user1.com", age: 22, address: 'cra 23 # 44 - 32'}).create}.must_raise (EmailError)
      err.message.must_match('Email already exist')
    end
  end
  
  context 'When first_name is empty' do
    it "is return" do
      err = lambda {user1 = User.new({ first_name:"", last_name:"apellido usuario1", email:"email@user3.com", age: 21, address: 'cra 23 # 44 - 32'}).create}.must_raise (NamesError)
      err.message.must_match('First name empty')
    end
  end
  
  context 'When last_name is empty' do
    it "is return" do
      err = lambda {user1 = User.new({ first_name:"user3", last_name:"", email:"email@user4.com", age: 21, address: 'cra 23 # 44 - 32'}).create}.must_raise (NamesError)
      err.message.must_match('Last name empty')
    end
  end
  
  context 'When Email is invalid' do
    it "is return" do
      err = lambda {User.new({ first_name:"user3", last_name:"last user", email:"email@usercom", age: 21, address: 'cra 23 # 44 - 32'}).create}.must_raise (EmailError)
      err.message.must_match('email must contain @ and a .')
    end
  end
  
  context 'When age is not a integer' do
    it "is return" do
      err = lambda {User.new({ first_name:"user3", last_name:"last user", email:"eail@us.com", age: 'ghj', address: 'cra 23 # 44 - 32'}).create}.must_raise (UserDataError)
      err.message.must_match('age invalid')
    end
  end
  
  context 'When age is a float' do
    it "is return" do
      err = lambda {User.new({ first_name:"user3", last_name:"last user", email:"em@rer.com", age: 17.3, address: 'cra 23 # 44 - 32'}).create}.must_raise (UserDataError)
      err.message.must_match('age must not be float')
    end
  end
  #--------------------------------------------------------------------------------------------------
  #Tests for Update Method:
  context 'When Email is empty' do
    it "is return" do
      user2 = User.new({ first_name:"rio1", last_name:"apellido usuario1", email:"emmmm@frr.com", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1).update({first_name: 'efewf', last_name: 'new_lastname', email: ''})}.must_raise (EmailError)
      err.message.must_match('Email empty')
    end
  end
  
  context 'When Email is already insert' do
    it "is return" do
      user1 = User.new({ first_name:"usuario1", last_name:"apellido usuario1", email:"email@u.com", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1).update({first_name: 'efewf', last_name: 'new_lastname', email: 'email@u.com'})}.must_raise (EmailError)
      err.message.must_match('Email already exist')
    end
  end
  
  context 'when the email is missing "@" or "."' do
    it "is return" do
      user1 = User.new({ first_name:"usuario1", last_name:"apellido usuario1", email:"bfhrjj@i.com", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1).update({first_name: 'efewf', last_name: 'new_lastname', email: 'ththht.com'})}.must_raise (EmailError)
      err.message.must_match('email must contain @ and a .')
    end
  end
  
  context 'when the first_name is empty' do
    it "is return" do
      User.new({ first_name:"usree", last_name:"apellido usuario1", email:"emarfre@ret.do", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1).update({first_name: '', last_name: 'new_lastname', email: 'email@users.com'})}.must_raise (NamesError)
      err.message.must_match('First name empty')
    end
  end
  
  context 'when the last_name is empty' do
    it "is return" do
      user2 = User.new({ first_name:"usuario", last_name:"apellido usuario2", email:"email@user2.com", age: 23, address: 'cra 32 # 54 - 121'}).create
      err = lambda {User.find(1).update({first_name: 'user_one', last_name: '', email: 'email@user3.com'})}.must_raise (NamesError)
      err.message.must_match('Last name empty')
    end
  end
  
  context 'when age is a float' do
    it "is return" do
      User.new({ first_name:"usrrge", last_name:"apellido", email:"ere@ret.do", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1).update({age: 21.5})}.must_raise (UserDataError)
      err.message.must_match('age must not be float')
    end
  end
  
  #----------------------------------------------------------------------------------------------------
  # Test for find method
  context 'when is empty' do
    it "is return" do
      err = lambda {User.find('')}.must_raise (IdError)
      err.message.must_match("id mustn't be empty")
    end
  end
  
  context 'when id is assigned 0, negative number o a string' do
    it "is return" do
      err = lambda {User.find(0)}.must_raise (IdError)
      err.message.must_match("ID can't be '0', negative number or string")
    end
  end
  
  context 'when id is a float' do
    it "is return" do
      User.new({ first_name:"usrlast", last_name:"apelo", email:"ere@rt.do", age: 21, address: 'cra 23 # 44 - 32'}).create
      err = lambda {User.find(1.58)}.must_raise (IdError)
      err.message.must_match('Id must not be float')
    end
  end
end 