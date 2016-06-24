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
  holiday_hash.each do |season, holidays|
  if season == :summer
  	holidays.each do |holiday,stuff|
  		if holiday == :fourth_of_july
  			return stuff[1]
  	end
  end
  end
  end
  end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
if season == :winter
  holidays.each do |holiday,stuff|
     stuff << supply
  end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :spring
      holidays.each do |holiday,stuff|
        if holiday == :memorial_day
          stuff << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash[:winter].each do |holiday,supply|
  	supplies += supply
  end
  return supplies
end
def snake_to_sen(str)
	final = []
	str.split('_').each do |letter|
		letter.capitalize!
		final << letter
	end
	return final.join(' ')
end
def all_supplies_in_holidays(holiday_hash)#couldn't do without helper function
  holiday_hash.each do |season,holidays|
      puts "#{season.to_s.capitalize!}:"
        holidays.each do |holiday, supply|
          holiday = holiday.to_s
          puts "  #{snake_to_sen(holiday)}: #{supply.join(', ')}"
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.each do |season, holiday|
  		holiday.each do |holidays,supply|
  			if supply.include?("BBQ") == true
  		bbq_holiday << holidays
  	end
  		end
   end
   return bbq_holiday
  end
