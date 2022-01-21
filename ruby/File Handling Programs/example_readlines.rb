# data.readline() call returns the line read. It includes the trailing newline, if one exists.

data = File.open('readme.txt')
line = data.readlines()
line.each do |ele|
  ele
  print ele
end

# output 
=begin

hello world sahjkahdjkafhjk
sajkfdhfjkdshfjkdhf
sahjkfhsjkafhjksahfjk
sjafhsjkhfjka

=end