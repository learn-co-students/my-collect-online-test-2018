

def my_collect(collection)
    i = 0
    modded_collection = []
    while i < collection.length
       modded_collection << yield(collection[i])
       i += 1
    end
    modded_collection
end