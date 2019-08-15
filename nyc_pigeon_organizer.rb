def nyc_pigeon_organizer(data)
  new_hash = {}
  p "++++++++++ start ++++++++++++++"
  data.each do |key, value|
    p "+++++ data.each +++++"
    p "key : #{key}"
    p "value : #{value}"
    value.each do |new_value, names|
      p " ++++ value.each +++++"
      p "new_value : #{new_value}"
      p "names : #{names}"
      names.each do |name|
        p "name : #{name}"
        if !new_hash[name]
         new_hash[name] = {}
           p "add name to new_hash #{new_hash[name]}"
        end
        if !new_hash[name][key]
         new_hash[name][key] = []
         p "add key to new_hash #{new_hash[name][key]}"
        end
        p "new_value in string #{new_value.to_s}"
        new_hash[name][key] << new_value.to_s
        p new_hash
      end
    end
  end
  new_hash
end
