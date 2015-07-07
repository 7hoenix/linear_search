class LinearSearch
  attr_reader :values, :marker

  def initialize(values)
    @values = values
    @found = false
    @marker = 0
  end

  def search(x)
    while @found == false && marker < values.size
     if values[marker] == x
       @found = true
     else
       @marker += 1
     end
    end
    if @found == false
      "Value not found"
    else
      "x is at position #{marker}"
    end
  end
end

values = (1..1000).to_a.shuffle
searcher = LinearSearch.new(values)
puts searcher.search(300)

