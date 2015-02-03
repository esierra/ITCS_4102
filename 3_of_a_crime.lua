math.randomseed(os.time())
d1=math.random(1,7)
d2=math.random(1,7)
d3=math.random(1,7)
-- make sure num_players<=3
function pick_guilty(d)
   if d==1 then
    d='a'
elseif d==2  then
    d='b'
    elseif d==3 then
      d='c'
      elseif d==4 then
        d='d'
        elseif d==5 then
          d='e'
          elseif d==6 then
            d='f'
            elseif d==7 then
              d='g'
            end
            return d
end
d1=pick_guilty(d1) 
d2=pick_guilty(d2)
d3=pick_guilty(d3)

repeat
print("Enter number of players between 1 and 3:")
players=io.read("*n")
until players>0 and players<4
--
check_num=0
while(check_num<players) do
pass=true
while(pass) do

user_guess=true
while(user_guess) do

for i=1,players,1 do--start the player turn 

math.randomseed(os.time())
count=0
c1=math.random(1,7)
c2=math.random(1,7)
c3=math.random(1,7)


function Names (list)
  local set = {}
  for _, l in ipairs(list) do set[l] = true end
  return set
end

local guilty= Names {d1,d2,d3}
 guilty_criminals={d1,d2,d3}
local criminals_to_display={'a','b','c','d','e','f','g'}



print("These are your options: ")--display 3 random criminals from a-g
print(""..criminals_to_display[c1].." "..criminals_to_display[c2].." "..criminals_to_display[c3])

for j,v in pairs(guilty) do
  if j == criminals_to_display[c1] then
    count=count+1
  end
  if j==criminals_to_display[c2] then
    count=count+1
  end
  if j==criminals_to_display[c3] then
    count=count+1
  end
end

function inTable(tbl, item)
    for key, value in pairs(tbl) do
        if value == item then return "true" end
    end
    return "false"
end
io.read()
print("There are "..count.." criminals")--display the number of guilty in the displayed group
print("Player "..i.." guess or pass?")
-- i=players
answer=io.read()

if answer=="guess" then
pass=false
print("Is "..criminals_to_display[c1].." guilty? true/false")
guess=io.read()
  if guess ~= inTable(guilty_criminals,criminals_to_display[c1])  then
    print("Sorry you have been eliminated")
    user_guess=false
    players=players-1
    break;
  end

print("Is "..criminals_to_display[c2].." guilty? true/false")
guess1=io.read()
  if guess1 ~= inTable(guilty_criminals,criminals_to_display[c2]) then
    print("Sorry you have been eliminated")
    user_guess=false
        players=players-1
        break;
  end

print("Is "..criminals_to_display[c3].." guilty? true/false")
guess2=io.read()
  if guess2 ~= inTable(guilty_criminals,criminals_to_display[c3]) then
    print("Sorry you have been eliminated")
        user_guess=false
        players=players-1
        break;

  else
    print("CONGRATS! You win the game")
        user_guess=false
        -- players=players-1
        os.exit()

  end

end--end if loop for answer==guess

end--end user guess while loop
end--pass loop
end--end for loop
end--num of players loop
