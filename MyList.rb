require_relative 'my_enumerable'

class MyList
@list = []
include MyEnumerable

def each(&block)
@list.each(&block)
end

def initialize(*lis)
@list = lis
end
end

print list = MyList.new(1, 2, 3, 4)
# => #<MyList: @list=[1, 2, 3, 4]>

print list.all? { |e| e < 5 }
# => true
print list.all? { |e| e > 5 }
# => false

print list.any? { |e| e == 2 }
# => true
print list.any? { |e| e == 5 }
# => false

print list.filter?(&:even?)
# => [2, 4] 