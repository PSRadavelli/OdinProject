
$family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

def family_values
  print $family.values
end

def family_keys
  print $family.keys
end


def family_values_keys
  $family.each do |i|
    print i
  end
end

family_values()
family_keys()
family_values_keys()

