require 'pry'

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

def my_collect(collection)
    i = 0
    modded_collection = []
    while i < collection.length
       modded_collection << yield(collection[i])
       i += 1
    end
    modded_collection
end
binding.pry
my_collect(array) do |name|
    name.split(" ").first
end