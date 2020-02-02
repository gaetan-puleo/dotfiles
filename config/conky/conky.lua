-- Find local IP address according to active connections
function conky_myaddr()
  return conky_parse('${addr ' .. findInterface() .. '}')
end

function conky_interface()
  return conky_parse('${' ..findInterface() .. '}')
end


-- Find up/download speed
function conky_myspeed(upordown)
  print(findInterface())
  return conky_parse('${' .. upordown .. 'speed ' .. findInterface() .. '}')
end

-- Generate up/download speed graph
function conky_myspeedgraph(upordown, h, w, color1, color2)
  return conky_parse('${'..upordown..'speedgraph '..findInterface()..' '..h..','..w.. ' ' ..color1..' ' ..color2..'}')
end

-- Find the string representing the connection's interface (e.g.  eth0)
function findInterface()
  local handle = io.popen('ip a | grep "state UP" | cut -d: -f2 | tr -d " "')
  local result = handle:read('*a'):gsub('\n$','')
  handle:close()
  return result
end
