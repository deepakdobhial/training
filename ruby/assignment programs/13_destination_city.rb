=begin 
You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from
cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.
It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one
destination city.
Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
Output: "Sao Paulo"
Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip
consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo"
=end

def destination_city(paths)
  destination_arr = []
  flag = true
  for i in 0...paths.length
    for j in 0...paths.length
      if paths[i][1] == paths[j][0]
        flag = false
        break
      else 
        flag = true
      end
    end
    if flag == true
      destination_arr.push(paths[i][1])
      break
    end
  end
  
  return destination_arr 
end

# main
paths = [["London", "New York"], ["New York", "Lima"], ["Lima", "Sao Paulo"]]
puts "Destination City : #{ destination_city(paths) }"

#output 
=begin
Destination City : ["Sao Paulo"]

=end