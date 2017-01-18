def reformat_languages(languages)
  new_hash = {}
  languages.each do |styles, types|
    types.each do |name, atr|
      if new_hash.include? name
      else
        new_hash[name] = {}
        new_hash[name][:style] = []
      end
      atr.each do |k, v|
        new_hash[name][k] = v
        new_hash[name][:style] << styles
      end
    end
  end
  return new_hash
end
