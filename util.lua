function intablei(haystack, needle)
    for i, el in ipairs(haystack) do
        if el == needle then
            return i
        end
    end

    return false
end

function combineArrays(t1, t2)
    local t = {}

    for _,v in ipairs(t1) do
        table.insert(t, v)
    end

    for _,v in ipairs(t2) do
        table.insert(t1, v)
    end

    return t
end

function updateGroup(group, dt)
	for i = #group, 1, -1 do
		if (group[i].update and group[i]:update(dt)) or group[i].removeMe then
            if group[i].remove then group[i]:remove() end
			table.remove(group, i)
		end
	end
end