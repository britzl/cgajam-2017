local M = {}


M.blink = {}

local blink_nodes = {}

function M.blink.start(node, duration)
	if not blink_nodes[node] then
		blink_nodes[node] = gui.get_color(node)
	end
	gui.animate(node, gui.PROP_COLOR, gui.get_color(node), gui.EASING_LINEAR, duration, 0, function()
		if gui.get_color(node) == vmath.vector4(0) then
			gui.set_color(node, blink_nodes[node])
		else
			gui.set_color(node, vmath.vector4(0))
		end
		M.blink.start(node, duration)
	end)
end

function M.blink.stop(node)
	gui.cancel_animation(node, gui.PROP_COLOR)
	gui.set_color(node, blink_nodes[node] or vmath.vector4(1))
	blink_nodes[node] = nil
end



return M