$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
<<<<<<< HEAD
require 'pry'
def directors_totals(nds)
  directors = {}
  row_index = 0 
  while row_index < nds.length do 
    column_index = 0 
    total = 0
    while column_index < nds[row_index][:movies].length do 
        total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index +=1 
    end 
    a = nds[row_index][:name]
        directors[a] = total
=======
require `pry`
def directors_totals(nds)
  directors = {}
  row_index = 0 
  while row_index < nds[row_index].length do 
    column_index = 0 
    binding.pry
    while column_index < nds[row_index][:movies].length do 
      total = 0
      inner_index = 0 
      while inner_index < nds[column_index][:movies].length do 
        total += nds[row_index][:movies][inner_index][:worldwide_gross]
        inner_index += 1 
      end 
      column_index +=1 
    end 
>>>>>>> 48af6789ff86e002bcebee92891f6899d05bbc72
    row_index += 1 
  end 
  return directors
end
