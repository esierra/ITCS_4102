--[[
Authors: Edson Sierra, Christian Alba, Scott Bobbitt.
This Program's purpose is to show major data structures in Lua.
Run: lua data.lua
Last Modified: October 3, 2014
]]

names={}
ages={}
i=0
repeat
print("Enter a name:")
name=io.read()
print("Enter age:")
age=io.read()
table.insert(names,name)
table.insert(ages,age)
i=i+1
until i==3

--index starts at '1'
print("The table of names contains: ")
 for j,line in pairs(names) do
      print(line)
    end

print("***************************************")

  print("The table of ages contains: ")
  for j,line in ipairs(ages) do
      print(j,line)
    end

print("***************************************")
print("Table of names and GPA: ")

GPA = { Bob = 3.4, Joe = 3.0, Al = 4.0, Homer= 2.9, AJ=2.6 }

for key, value in pairs(GPA) do
  print(key, value)
end


