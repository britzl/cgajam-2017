local M = {}

M.OUT_LEFT_RIGHT = vmath.vector3(160, 0, 0)
M.OUT_UP_DOWN = vmath.vector3(0, 284, 0)

function M.slide_left(node, duration, cb)
	gui.animate(node, gui.PROP_POSITION, gui.get_position(node) - M.OUT_LEFT_RIGHT, gui.EASING_INOUTCUBIC, duration or 0.4, 0, cb)
end

function M.slide_right(node, duration, cb)
	gui.animate(node, gui.PROP_POSITION, gui.get_position(node) + M.OUT_LEFT_RIGHT, gui.EASING_INOUTCUBIC, duration or 0.4, 0, cb)
end

function M.slide_up(node, duration, cb)
	gui.animate(node, gui.PROP_POSITION, gui.get_position(node) + M.OUT_UP_DOWN, gui.EASING_INOUTCUBIC, duration or 0.4, 0, cb)
end

function M.slide_down(node, duration, cb)
	gui.animate(node, gui.PROP_POSITION, gui.get_position(node) - M.OUT_UP_DOWN, gui.EASING_INOUTCUBIC, duration or 0.4, 0, cb)
end


return M