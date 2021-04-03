function intablei(haystack, needle)
    for i, el in ipairs(haystack) do
        if el == needle then
            return i
        end
    end

    return false
end