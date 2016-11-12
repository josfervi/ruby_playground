# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

# FUTURE FEATURE: could add a.m. , p.m. for good measure
def time_conversion(minutes)
         #                              --minute string-       right justify to a mininum? of 2 chars, pad with "0"s if necessary
         #   ---hour---                 --minute--
    return ((minutes/60)%12).to_s + ":" + (minutes%60).to_s.rjust(2, "0") # minute string must always be two digits long
                      # ^^^
                      # |||
                      # %12 for non-military time
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
