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
    holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
    holiday_hash[:winter][:christmas] << supply
    holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_text_array = []
  holiday_hash.each do |season, data|
    season_stuff = season.capitalize
    holiday_text_array << season_stuff.to_s
      data.each do |holiday, value|
      holiday_stuff = holiday.capitalize
      holiday_text_array << holiday_stuff.to_s
        value.each do |string|
          holiday_text_array << string.to_s
      end
    end
  end
  puts holiday_text_array

end

def all_holidays_with_bbq(holiday_hash)
  holiday_bbq_array = []
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    holiday_hash.each do |season, data|
      data.each do |holiday, value|
        value.each do |string|
          if string == "BBQ"
            holiday_bbq_array << holiday
         end
      end
    end
  end
  holiday_bbq_array
end







