-- Game flow controller thing I dunno what these are called by Maurice. Feel free to use it, MIT License

local FlowController3 = class("FlowController3")

function FlowController3:initialize()
	self.steps = {}
	self.sleepTime = 0
	self.step = 1
	self.branches = {}

	self.timing = "best" --best, late, early
end

function FlowController3:update(dt)
	if #self.branches ~= 0 then
		updateGroup(self.branches, dt)
	else
		if self.step > #self.steps then
			return true
		end
	end

	self.sleepTime = math.max(0, self.sleepTime - dt)

	local proceed = true

	while self:timingCondition(self.sleepTime, dt) and self.step <= #self.steps and proceed do
		local step = self.steps[self.step]
		local type = step.type

		if type == "function" then
			step.func()
		elseif type == "wait" then
			self.sleepTime = self.sleepTime + step.duration
		elseif type == "branch" then
			table.insert(self.branches, step.flowController)
		elseif type == "condition" then
			proceed = step.func()
		end

		if proceed then
			self.step = self.step + 1
		end
	end
end

function FlowController3:addCall(func)
	if type(func) == "nil" then
		print("Hey you tried to add nil as a call to a FlowController3:")
		print(debug.traceback())
	else
		table.insert(self.steps, {
			type="function",
			func=func
		})
	end
end

function FlowController3:addWait(t)
	table.insert(self.steps, {
		type="wait",
		duration=t
	})
end

function FlowController3:addCondition(func)
	table.insert(self.steps, {
		type="condition",
		func=func
	})
end

function FlowController3:newBranch()
	local flow = FlowController3:new()
	table.insert(self.steps, flow)

	table.insert(self.steps, {
		type="branch",
		flowController=flow
	})

	return flow
end

function FlowController3:timingCondition(t, dt)
	if self.timing == "late" then
		return t <= 0

	elseif self.timing == "early" then
		return t <= dt

	elseif self.timing == "best" then
		return t <= dt*0.5

	end
end

return FlowController3