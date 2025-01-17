require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |season, holidays|
    if season == :summer
      holidays.each do |holiday, supplies|
        if holiday == :fourth_of_july
          return supplies[1]
        end 
      end 
    end 
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.push(supply)
  end 
  holiday_hash
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |season1, seasons_holidays|
    if season1 == season 
      seasons_holidays[holiday_name] = supply_array
    end
  end
  holiday_hash
  # code here
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies_array = []
  holiday_hash[:winter].each do |holiday, supplies|
    winter_supplies_array += supplies 
  end
  winter_supplies_array
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    season_string = season.to_s
    season_string[0] = season_string[0].upcase
    puts "#{season_string}:"
    holidays.each do |holiday, supplies|
      holiday_string = holiday.to_s
      array_of_words = holiday_string.split("_")
      upcased_words = array_of_words.map do |word| 
        word[0] = word[0].upcase
        word
      end
      upcased_holiday = upcased_words.join(" ")
      string_supplies = supplies.join(", ")
      puts "  #{upcased_holiday}: #{string_supplies}"
    end
  end
  holiday_hash
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end







