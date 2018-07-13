require 'pry'
def begins_with_r(array)
  if array.none? { |str| str.start_with?('r') != true}
   # i+=1
    true
  else
    false
 end
end
 
 def contain_a(array)
  array.select { |word| word.include?('a')}
end


def first_wa(array)
  array.find { |word| word[0..1] == 'wa' }
end # .find_all will find words starting with : as in :wall (experimentation) or .find for first word

def remove_non_strings(array)
  array.delete_if { |element| !(element.is_a? String) } #is not a string
end #directions say to use .class method. not sure how to do this

def count_elements(array)
  array.group_by(&:itself).map { |key, value| key.merge(count: value.length)} # counts number of times occur
end  #&:itself was added to ruby 2.2.0 - gathers groups together

=begin
def count_elements(array) #another way
  array.each do |array_hash|
    name = array_hash[:name] 
    array_hash[:count] = 0
    array.each do |other_hash|
      if other_hash[:name] == name
        array_hash[:count] +=1
      end
    end
  end.uniq #keeps only unique items 
end
=end

def merge_data(people, people_stats)
  array_list = []
  people.each do |person, stats|
    name = person[:first_name]
    people_stats.each do |stats|
      if stats[name]
        merged_person = stats[name]
        merged_person[:first_name] = name
        array_list << merged_person
      end
    end
  end
  array_list
end

def find_cool(array)
  array_list=[]
  array.each do |element|
    if element[:temperature] == "cool"
      array_list << element
    end
  end
  array_list
end



def organize_schools(schools)
  organized_schools_list = {}
  schools.each do |school_name, location_data|
    location = location_data[:location]
    if organized_schools_list[location]
      organized_schools_list[location] << school_name
    else
      organized_schools_list[location] = []
      organized_schools_list[location] << school_name
    end
  end
  organized_schools_list
end



