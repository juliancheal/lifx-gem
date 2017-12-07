require 'lifx'

# LIFX::Config.logger = Logger.new(STDERR)
# LIFX::Config.logger.level = Logger::INFO

# lifx = LIFX::Client.lan
# lifx.discover!
#
# lights = lifx.lights
#
# # lights.each do |light|
# #   puts light.inspect
# # end
# #<LIFX::Light id=d073d525c2cc label=Hallway power=off>
# #<LIFX::Light id=d073d52591cd label=Guest Room power=off>
# #<LIFX::Light id=d073d5257397 label=Bedroom power=off>
# #<LIFX::Light id=d073d525e0d6 label=Living Room power=on>
# #<LIFX::Light id=d073d5260abc label=Landing power=off>
# #<LIFX::Light id=d073d525fa92 label=Green Lamp power=off>
#
# light = lights.with_id("d073d525e0d6")
# color = light.color
# puts color.inspect
# light.set_color(color.with_brightness(0.41))

lifx  = LIFX::TransportManager::LAN.new
nc    = LIFX::NetworkContext.new(transport_manager: lifx)
light = LIFX::Light.new(context: nc, id: "d073d525e0d6")
color = light.color
# light.set_color(color.with_brightness(0.41))
light.turn_on
