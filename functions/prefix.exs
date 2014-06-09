prefix = fn pre -> (fn suffix -> "#{pre} #{suffix}" end) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
