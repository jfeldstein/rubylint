require 'pp'

class HashLinter
  def self.lint(str)
    str = str.to_s
    
    r = proc {
      $SAFE = 4  # change level only inside this proc
      scary_time str
    }.call
    
    JSON.pretty_generate r
  end

  private
  def self.scary_time(str) 
    eval(str) # Should return a real hash
  end
end
