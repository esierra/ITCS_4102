high=100
low=1
print("Think of a number between "..low.." and "..high)
print("I'm going to guess it in O(log(n)) time")
print("And please don't cheat!")
while true do
    guess = math.floor((high + low)/2)
    print("Is your number "..guess.."?")
    print("Tell me if your number is correct, higher, or lower...(c,h,l)")
    input = io.read()
 
  if input == "l" then --higher
    high = guess
  elseif input == "h" then --lower
    low = guess
  elseif input == "c" then --correct
  print("Yay! I won!")
    break
  else
    print("Not a number!")
    end 
end


