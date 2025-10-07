local helper = {}

function helper.seconds()
    return 60
end

function helper.minutes()
    return helper.seconds() * 60
end

function helper.replace(word, from, to)
    return string.gsub(word, from, to)
end

return helper