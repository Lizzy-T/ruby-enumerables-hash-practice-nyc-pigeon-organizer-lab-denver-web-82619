def nyc_pigeon_organizer(data)
  male_birds = data[:gender][:male]
  female_birds = data[:gender][:female]
  p  pigeons = male_birds|female_birds
  pigeon_details = pigeons.to_h do |bird|
    [bird, {:color => ["unknown color"],
          :gender => ["unknown gender"],
          :lives => ["unknown lives"]}]
        end
  #p pigeon_colors = data.fetch_values(:color)[0]
  #pigeon_colors[:purple][0]
  n = 0
  while n < pigeons.length
    data.each_pair do |key, value|
      var_to_update = pigeon_details[pigeons[n]][key]
      value.each_pair do |key, value|
          i = 0
          while i < value.length
            if pigeons[n] == value[i]
              var_to_update.push(key.to_s)
            end
            i += 1
          end
      end
      var_to_update.shift
      var_to_update
    end
    n += 1
  end
  p pigeon_details
  pigeon_details
end
