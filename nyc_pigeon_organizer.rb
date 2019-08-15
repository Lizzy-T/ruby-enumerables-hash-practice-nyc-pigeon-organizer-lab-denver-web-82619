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
        p "name #{name}"
        if !new_hash[name]
        p  new_hash[name] = {}
        end

        if !new_hash[name][key]
        p  new_hash[name][key] = []
        end

    p    new_hash[name][key] << new_value.to_s

      end
    end
  end
  new_hash
end
