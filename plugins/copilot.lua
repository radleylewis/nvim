local copilot_loaded, copilot = pcall(require, "copilot")
if not copilot_loaded then
	return
end

copilot.setup()
