local function foo(t)
  local function traverse(t)
    for k, v in pairs(t) do
      if type(v) == "table" then
        traverse(v)
      end
      print(k,v)
    end
  end
  traverse(t)
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t) 