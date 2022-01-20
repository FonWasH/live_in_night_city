local MockDB = {}

function MockDB.save(table, data)
    local thirst, hunger, fatigue = data.thirst, data.hunger, data.fatigue
    if type(data.thirst) == "boolean" then
        thirst = (data.thirst and 1 or 0)
        hunger = (data.hunger and 1 or 0)
        fatigue = (data.fatigue and 1 or 0)
    end
    db:execute(string.format([[INSERT OR REPLACE INTO %s VALUES ('%s', '%s', '%s', '%s')]], table, os.time(), thirst, hunger, fatigue))
end

function MockDB.load(table, id)
    local i, r = db:nrows(("SELECT * FROM %q WHERE id IN (%q, %q) LIMIT 1"):format(table, id, id + 1))
    return i(r)
end

return MockDB
