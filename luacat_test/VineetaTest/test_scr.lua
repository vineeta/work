
package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest' 

function scrub(args) 
ta = {}
tc = {}
tk = {}
ts = {}
cnt = 0

tk = Table.keys(args)
ts = Table.sort(tk)

for k,v in pairs(args)do
	ta[k] = "[Function]"
end

for _,v in pairs(ts)do
	tc[tostring(cnt)] = {0, v}
	cnt = cnt + 1
end
return { arguments = ta, callbacks = tc}
end



function test_scrub()

  local args = {
   
    emit = function() end,
    names = function() end,
    say = function() end,
  }
  local scrubbed = scrub(args)

  local expected = {
    arguments = {
      emit = "[Function]",
      names = "[Function]",
      say = "[Function]",
    },
     callbacks = { 
      ['0'] = {0, "emit"},
      ['1'] = {0, "names"},
      ['2'] = {0, "say"},
    }
  }
  assert_equal(expected, scrubbed)
end


if is_main() then
  UnitTest.run()
end
