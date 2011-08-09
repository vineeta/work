-- test_all.lua
--                           wookay.noh at gmail.com

package.path = package.path .. ";../luacat/?.lua"
require 'UnitTest'

require 'test_if'
require 'test_for'


if is_main() then
  UnitTest.run()
end
