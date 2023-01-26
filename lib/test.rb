class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    hash = Hash.new {|k,v| hash[k] = [v]}
    #hash = Hash.new {[]}
    self.each_with_index do |el,i|
      hash[el] <<  i
    end
    p hash
    hash.select {|k,v| v.length > 0}
  end
end

# [1, 3, 0, 1].dups).to eq({ 1 => [0, 3] })
p [1, 3, 0, 1].dups#).to eq({ 1 => [0, 3] })
