def nextVersion(version)
  return_string = ""
  new_hash = {}

  new_arr = version.split(".")
  new_arr.each_with_index {|n,i| new_hash[i] = n.to_i}
  new_hash[new_arr.length-1] += 1

  (new_arr.length-1).downto(1) do |i|
    if new_hash[i] > 9
      new_hash[i] = 0
      new_hash[i-1] += 1
    end
  end
  p new_hash
  0.upto(new_arr.length-1) do |i|
    x = i.to_i
    return_string += "#{new_hash[x]}."
  end
  return_string[0..-2]
end

def nextVersion(version)
  version.succ
end

def nextVersion(version)
  dots = version.count('.')
  next_version = version.delete('.').to_i + 1
  next_version = next_version.to_s.chars
  dots.times do |i|
    next_version.insert(-2-i*2, '.')
  end
  next_version.join
end