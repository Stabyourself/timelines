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