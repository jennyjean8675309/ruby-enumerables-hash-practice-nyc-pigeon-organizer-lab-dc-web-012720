require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def make_new_hash(data)
  new_hash = {}
  
  data[:gender].each do |gender, value|
    value.each do |name|
      new_hash[name] = {:color => [], :gender => [], :lives => []}
    end
  end

  new_hash
end

def nyc_pigeon_organizer(data)
  new_hash = make_new_hash(data)

  data.each do |attr_key, attr_hash|
    data[attr_key].each do |attribute, pigeons|
      pigeons.each do |name|
        new_hash[name][attr_key].push(attribute.to_s)
      end
    end
  end

  new_hash
end
