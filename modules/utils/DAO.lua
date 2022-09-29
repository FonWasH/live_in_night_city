local DAO = {}

function DAO.save(table, data, sessionKey)
    db:execute(
        string.format(
            [[INSERT OR REPLACE INTO %s VALUES ('%s', '%s', '%s', '%s', '%s')]],
            table,
            sessionKey,
            data.total,
            data.pool,
            data.step,
            data.prevStep
        )
    )
end

function DAO.load(table, sessionKey)
    local i, r = db:nrows(("SELECT * FROM %q WHERE id = %q"):format(table, sessionKey))
    return i(r)
end

return DAO