class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.kind_of?(Hash)
      @entries.merge!(entry)
    else
      @entries.merge!({entry => nil})
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(entry)
    @entries.has_key?(entry)
  end

  def find(entry)
    @entries.select do |key|
      key.include?(entry)
    end
  end

end
