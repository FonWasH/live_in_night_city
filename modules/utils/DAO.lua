local DAO = {}

function DAO.save(table, data)
    db:execute(
        string.format(
            [[INSERT OR REPLACE INTO %s VALUES ('%s', '%s', '%s', '%s', '%s')]],
            table,
            os.time(),
            data.total,
            data.pool,
            data.step,
            data.prevStep
        )
    )
end

function DAO.load(table, id)
    local i, r = db:nrows(("SELECT * FROM %q WHERE id IN (%q, %q) LIMIT 1"):format(table, id, id + 1))
    return i(r)
end

return DAO