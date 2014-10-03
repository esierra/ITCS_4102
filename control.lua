--[[
Authors: Edson Sierra, Christian Alba, Scott Bobbitt.
This Program's purpose is to show common control structures in Lua.
Contains for, while, if-else, and repeat Loops.
Run: lua control.lua
Last Modified: October 3, 2014
]]

repeat
print("Enter a number between 1 and 100: ")
num=io.read("*n")
until num >=1 and num<=100

function sum_nums(num)
  sum=0
  i=1
  while i <=num do
    sum=sum+i
    i=i+1
  end
  return sum
end

function pow_nums(num)
  product=1
  i=1
  while i <=num do
    product=product*i
    i=i+1
  end
  return product
end

print("This will print the sum between 1 and "..num..": "..sum_nums(num))
print()
print("This will print the product between 1 and "..num..": "..pow_nums(num))

print("***************************************")
print("This will print all the even and odd numbers between 1 and "..num)
for num = 1, num, 1 do

  if num%2==0 then 
    print("This is an even number: ",num)
  else 
   print("This is an odd number: \t",num) 
    end
end
print("***************************************")
