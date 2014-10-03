--[[
Authors: Edson Sierra, Christian Alba, Scott Bobbitt.
This Program's purpose is to show I/O in Lua.
Run: lua printing.lua
Last Modified: October 3, 2014
]]

print("Enter your name")
name=io.read("*l")
print("Enter your age:")
age=io.read("*n")
name = name:gsub("^%l", string.upper)--capitalizes first char in name

print("Your name is: "..name)
print("Your name reversed: "..string.reverse(name))
io.write("Your age: "..age.."\n")