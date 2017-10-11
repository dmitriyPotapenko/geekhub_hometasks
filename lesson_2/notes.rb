# Class

class A
  attr_accessor :name # name=, name
  attr_reader :name # name
  attr_writer :name # name=

  def instance_method
    # self is a link to an instace in this case
  end

  def self.class_method # self is a link to a current object
    # self is a link to a class in this case      
  end

  def variables # public method
    a = 1 # local variable
    @a = 1 # instance variable
    @@a = 1 # class variable
    $a = 1 # global variable
  end

  private

  def private_method

  end

  protected

  def protected_method

  end
end

# Module

module B
  def instance_method
  end
end

module C
  def class_method
  end
end

class A
  include B
  extend C
end

## ruby

module D
  def self.included(base)
    base.extend ClassMethods
  end

  def instance_method
  end

  module ClassMethods
    def class_method
    end
  end
end

class A
  include D 
end

## rails

module D
  extend ActiveSupport::Concern

  def instance_method
  end

  class_methods do
    def class_method
    end
  end
end

class A
  include D 
end

# class vs module

## you can not create an instance of module
## module inheritance is disabled
## you can use module as namespace Twilio::SendMessage

# Methods

def a(b)
end

def a(b:)
end

def a(b, *extra_params)
  extra_params # array
end

def a(b, **extra_params)
  extra_params # hash
end

# https://endofline.wordpress.com/2011/01/21/the-strange-ruby-splat/

# Memoize

a ||= 1

## assign 1 when "a" is nil

a ||= 4 # will be 1

# Range

(1..10).to_a # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  
('a'..'g').to_a # ["a", "b", "c", "d", "e", "f", "g"]

(1..10) === 5       # true  
(1..10) === 15      # false  
(1..10) === 3.14159 # true 

%w(bob jason tom) # ["bob", "jason", "tom"]
%i(bob jason tom) # [:bob, :jason, :tom]

def a
  puts 1

  return

  puts 2

end # will output only 1

def a(b)
  return 1 if b == 2

  3
end # will output 1 when b is equal 2, otherwise will 3

(1..10).each do |e|
  break if e == 5
end # will output 1, 2, 3, 4, 5

(1..10).each do |e|
  next if e == 5
end # will output 1, 2, 3, 4, 6, 7, 8, 9, 10

if 1 == 1
  1
elsif 2 == 2
  2
else
  3
end

unless 1 == 1
  2
else
  1
end

case a
when a == 1
  2
when a == 2
  3
when a == 3
  4
else
  5
end

{ 1 => 2, 2 => 3, 3 => 4 }[a] # we don't handle a "else" case here.

# rubocop https://github.com/bbatsov/rubocop

