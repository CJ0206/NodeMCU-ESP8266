wifi.setmode(wifi.STATION)
wifi.sta.config("BTHUB5-XGX5","5a6c8acbe5")
print(wifi.sta.getip())
relay1 = 5
relay2 = 4
relay3 = 0
relay4 = 2
gpio.mode(relay1, gpio.OUTPUT)
gpio.mode(relay2, gpio.OUTPUT)
gpio.mode(relay3, gpio.OUTPUT)
gpio.mode(relay4, gpio.OUTPUT)
srv=net.createServer(net.TCP)
srv:listen(80,function(conn)
    conn:on("receive", function(client,request)
        local buf = "";
        local _, _, method, path, vars = string.find(request, "([A-Z]+) (.+)?(.+) HTTP");
        if(method == nil)then
            _, _, method, path = string.find(request, "([A-Z]+) (.+) HTTP");
        end
        local _GET = {}
        if (vars ~= nil)then
            for k, v in string.gmatch(vars, "(%w+)=(%w+)&*") do
                _GET[k] = v
            end
        end
        buf = buf.."<h1>Relay control</h1>";
        buf = buf.."<p>Relay 1 <a href=\"?pin=ON1\"><button>ON</button></a>&nbsp;<a href=\"?pin=OFF1\"><button>OFF</button></a></p>";
        buf = buf.."<p>Relay 2 <a href=\"?pin=ON2\"><button>ON</button></a>&nbsp;<a href=\"?pin=OFF2\"><button>OFF</button></a></p>";
        buf = buf.."<p>Relay 3 <a href=\"?pin=ON3\"><button>ON</button></a>&nbsp;<a href=\"?pin=OFF3\"><button>OFF</button></a></p>";
        buf = buf.."<p>Relay 4 <a href=\"?pin=ON4\"><button>ON</button></a>&nbsp;<a href=\"?pin=OFF4\"><button>OFF</button></a></p>";
        local _on,_off = "",""
        if(_GET.pin == "ON1")then
              gpio.write(relay1, gpio.HIGH);
        elseif(_GET.pin == "OFF1")then
              gpio.write(relay1, gpio.LOW);
        elseif(_GET.pin == "ON2")then
              gpio.write(relay2, gpio.HIGH);
        elseif(_GET.pin == "OFF2")then
              gpio.write(relay2, gpio.LOW);
        elseif(_GET.pin == "ON3")then
              gpio.write(relay3, gpio.HIGH);
        elseif(_GET.pin == "OFF3")then
              gpio.write(relay3, gpio.LOW);
        elseif(_GET.pin == "ON4")then
              gpio.write(relay4, gpio.HIGH);
        elseif(_GET.pin == "OFF4")then
              gpio.write(relay4, gpio.LOW);
        end
        client:send(buf);
        client:close();
        collectgarbage();
    end)
end)
