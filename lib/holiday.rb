

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  {
    :winter => {
      :christmas => ["Lights", "Wreath"],
     :new_years => ["Party Hats"]
    },
    :summer => {
      :fourth_of_july => ["Fireworks", "BBQ"]
    },
    :fall => {
      :thanksgiving => ["Turkey"]
    },
   :spring => {
      :memorial_day => ["BBQ"]
    }
   }
  # return the second element in the 4th of July array
    return holiday_hash[:summer][:fourth_of_july][1]
  
end

require"pry"
def add_supply_to_winter_holidays(holiday_hash, supply)
 holiday_hash[:winter].each do |key, value| 
value << supply
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
 #binding.pry
end
end
require"pry"
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
#binding.pry 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  return holiday_hash
end
def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
holiday_hash.each do | season, holiday|
   puts "#{season.to_s.capitalize}:"
   holiday.each do |holi, supply|
  holi_cap =  holi.to_s.split("_").collect {|cap_w| cap_w.capitalize}
   puts "  #{holi_cap.join(" ")}: #{supply.join(", ")}"
  end
 end
end

def all_holidays_with_bbq(holiday_hash)
holiday_hash.map do |season, holidays|
  holidays.map do |event,supplies|
    if supplies.include?("BBQ")
      event
      end
    end
  end.flatten.compact
end





