# PREPEND

# module M
#   def c
#     'this is a overrided method of M module'
#   end
# end

# class C
#   def c
#     'this is a primary method of C class'
#   end
# end

# class A < C
#   def c
#     'this is a overrided method of A class'
#   end
# end

# puts A.new.c

# PROTECTED


# class A
#   public

#   def a(object)
#     object.c
#     c
#   end

#   private

#   def b
#     puts 'this is a private method'
#   end

#   protected

#   def c
#     puts 'this is a protected method'
#   end
# end

# puts A.new.c
# puts A.new.b

