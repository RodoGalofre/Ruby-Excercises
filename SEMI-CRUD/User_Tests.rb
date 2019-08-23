require 'minitest/autorun'
require_relative 'User.rb'
require 'minitest/spec'
require 'minitest-spec-context'

describe User, 'Crud tests ' do
  #-------------------------------------initialize test------------------------
  context 'when data is initialized with an object other than a hash' do
    it 'is return error' do
      err = -> { User.new('io') }.must_raise UserDataError
      err.message.must_match('UserData must be a Hash')
    end
  end
  #----------------------------------Tests for create method---------------------
  context 'when create method gets a email empty' do
    it 'is return' do
      user1 = User.new(first_name: 'usuario1', last_name: 'apellido usuario1', email: '', age: 21, address: 'cra 23 # 44 - 32')
      err = -> { user1.create }.must_raise UserDataError
      err.message.must_match('email empty')
    end
  end

  context 'When email is already insert' do
    it 'is return' do
      User.new(first_name: 'usuario1', last_name: 'apellido usuario1', email: 'email@ty.com', age: 21, address: 'cra 23 # 44 - 32')
          .create
      user2 = User.new(first_name: 'usuar1', last_name: 'apellido usu', email: 'email@ty.com', age: 22, address: 'cra 23 # 44 - 32')
      err = -> { user2.create }.must_raise EmailError
      err.message.must_match('Email already exist')
    end
  end

  context 'When first_name is empty' do
    it 'is return' do
      user1 = User.new(first_name: '', last_name: 'apellido usuario1', email: 'email@user3.com', age: 21, address: 'cra 23 # 44 - 32')
      err = -> {user1.create}.must_raise UserDataError
      err.message.must_match('first_name empty')
    end
  end

  context 'When last_name is empty' do
    it 'is return' do
      user1 = User.new(first_name: 'user3', last_name: '', email: 'email@us31er4.com', age:  21, address:  'cra 23 # 44 - 32')
      err = -> {user1.create}.must_raise UserDataError
      err.message.must_match('last_name empty')
    end
  end

  context 'When Email is invalid' do
    it 'is return' do
      err = -> {User.new(first_name: 'user3', last_name: 'last user', email: 'email@usercom', age:  21, address:  'cra 23 # 44 - 32').create}.must_raise EmailError
      err.message.must_match('email has invalid format.')
    end
  end

  context 'When age is a float' do
    it 'is return' do
      err = -> {User.new(first_name: 'user3', last_name: 'last user', email: 'em@rett6r.com', age:  17.3, address:  'cra 23 # 44 - 32').create}.must_raise UserDataError
      err.message.must_match('age must not be float')
    end
  end

  context 'When first_name is a float' do
    it 'is return' do
      err = -> {User.new(first_name: 454.88, last_name: 'last user', email: 'em@rer.com', age:  '17', address:  'cra 23 # 44 - 32').create}.must_raise UserDataError
      err.message.must_match('first_name must not be float')
    end
  end

  context 'When last_name is a float' do
    it 'is return' do
      err = -> {User.new(first_name: 'user3', last_name: 878.99, email: 'em@rer.com', age:  78, address:  'cra 23 # 44 - 32').create}.must_raise UserDataError
      err.message.must_match('last_name must not be float')
    end
  end

  context 'When address is a float' do
    it 'is return' do
      err = -> {User.new(first_name: 'user3', last_name: 'fsdf', email: 'em@rer.com', age: 3, address: 878.4).create}.must_raise UserDataError
      err.message.must_match('Address must not be float')
    end
  end

  #--------------------------------------------------Update Method:-------------

  context 'When Email is empty' do
    it 'is return' do
      user2 = User.new( first_name: 'rio1', last_name: 'apellido usuario1', email: 'emmmm@frr.com', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> { user2.update(first_name: 'efewf', last_name: 'new_lastname', email: '')}.must_raise UserDataError
      err.message.must_match('email empty')
    end
  end

  context 'When Email is already insert' do
    it 'is return' do
      user1 = User.new( first_name: 'usuario1', last_name: 'apellido usuario1', email: 'email@u.com', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> { user1.update(first_name: 'efewf', last_name: 'new_lastname', email: 'email@u.com')}.must_raise EmailError
      err.message.must_match('Email already exist')
    end
  end

  context "when the email is missing '@' or '.'" do
    it 'is return' do
      user22 = User.new( first_name: 'usuario1', last_name: 'apellido usuario1', email: 'bfhrjj@i.com', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> { user22.update(first_name: 'efewf', last_name: 'new_lastname', email: 'ththht.com')}.must_raise EmailError
      err.message.must_match('email has invalid format.')
    end
  end

  context 'when the first_name is empty' do
    it 'is return' do
      user24 = User.new(first_name: 'usree', last_name: 'apellido usuario1', email: 'emarfre@ret.do', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> { user24.update(first_name: '', last_name: 'new_lastname', email: 'email@users.com')}.must_raise UserDataError
      err.message.must_match('first_name empty')
    end
  end

  context 'when the last_name is empty' do
    it 'is return' do
      user13 = User.new(first_name: 'usuario', last_name: 'apellido usuario2', email: 'email@user2.com', age:  23, address:  'cra 32 # 54 - 121').create
      err = -> {user13.update(first_name: 'user_one', last_name: '', email: 'email@user3.com')}.must_raise UserDataError
      err.message.must_match('last_name empty')
    end
  end

  context 'when age is a float' do
    it 'is return' do
      us = User.new(first_name: 'usrrge', last_name: 'apellido', email: 'ere@ret.do', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> { us.update(age: 56.76)}.must_raise UserDataError
      err.message.must_match('age must not be float')
    end
  end

  context 'When first_name is a float' do
    it 'is return' do
      uss = User.new(first_name: 'usrrge', last_name: 'apellido', email: 'ejuyre@ret.do', age:  21, address:  'cra 23 # 44 - 32').create
      err = -> {uss.update(first_name: 43.7)}.must_raise UserDataError
      err.message.must_match('first_name must not be float')
    end
  end

  context 'When last_name is a float' do
    it 'is return' do
      usm = User.new(first_name: 'usrrge', last_name: 'apellido', email: 'er234e@ret.do', age:  81, address:  'cra 243 # 53 - 32').create
      err = -> {usm.update(last_name: 45.88)}.must_raise UserDataError
      err.message.must_match('last_name must not be float')
    end
  end

  context 'When address is a float' do
    it 'is return' do
      user22 = User.new(first_name: 'usrrge', last_name: 'apellido', email: 'ersfde@ret.do', age:  8, address:  'cra 243 # 53 - 32').create
      err = -> {user22.update(address: 8.98)}.must_raise UserDataError
      err.message.must_match('Address must not be float')
    end
  end
  #----------------------------------------------------find method-------------------------------------------------------------

  context 'when id for find method is empty' do
    it 'is return' do
      err = -> {User.find('')}.must_raise IdError
      err.message.must_match('id must not be empty')
    end
  end

  context 'when the id doesn`t exist' do
    it 'is return' do
      err = -> {User.find(89)}.must_raise IdError
      err.message.must_match('User no found')
    end
  end
  #---------------------------------------------------all-------------------------------------------------------------------------------
  context 'when creating a new object' do
    it 'must be included in all' do
      user18 = User.new(first_name: 'usrlast', last_name: 'apfelo', email: 'erfs32e@rt.do', age:  21, address:  'cra 23 # 44 - 32').create
      User.all.must_include(user18)
    end
  end
  #--------------------------------------------------count-------------------------------------------------------------------------------
  context 'when creating a new object' do
    it 'must be increased by one' do
      User.new(first_name:'usrlast', last_name:'apfelo', email:'ere@hgvfv.do', age: 21, address: 'cra 23 # 44 - 32').create
      User.count.must_equal($users.length)
    end
  end
  #-------------------------------------------------destroy-----------------------------------------------------------------------
  context 'when an object is deleted' do
    it 'must disappear from the User class' do
      user52 = User.new(first_name: 'usrlast', last_name: 'apfelo', email: 'ere@hgffv.do', age: 21, address: 'cra 23 # 44 - 32').create
      user52.destroy
      User.all.wont_include(user52)
    end
  end
  #--------------------------------------------------User-Destroy-----------------------------------------------------------------------
  context 'when one object have been deleted' do
    it 'id wont be replaced' do
      user22 = User.new(first_name: 'user1', last_name: 'apreffelo', email: 'ere@hr4f5v.do', age:  21, address:  'cra 13 # 5 - 02').create
      user22.destroy
      err = -> { User.find(user22.id) }.must_raise IdError
      err.message.must_match('User no found')
    end
  end
end
