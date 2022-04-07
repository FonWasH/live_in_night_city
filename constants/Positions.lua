local Positions = {
    h10Bed = {
		x = -1378.4,
		y = 1273.0,
		z = 123.1,
		xSlack = 2.5,
		ySlack = 2.0,
		zSlack = 50000.2		-- temporary, take z out of equation
    },
    h10Couch = {
		x = -1378.3,
		y = 1267.0,
		z = 122.6,
		xSlack = 1.2,
		ySlack = 0.3,
		zSlack = 0.4
    },
    h10Shower = {
		x = -1383.1,
		y = 1278.0,
		z = 123.1,
		xSlack = 0.5,
		ySlack = 0.5,
		zSlack = 0.2
    },
    northsideBed = {
		x = -1503.0,
		y = 2229.0,
		z = 22.2,
		xSlack = 2.75,
		ySlack = 2.0,
		zSlack = 0.2
    },							 -- northside apt doesn't have a couch
    northsideShower = {			--   -1508.613770 2227.181396 22.273697
		x = -1508.6,
		y = 2227.2,
		z = 22.3,
		xSlack = 1,
		ySlack = 0.6,
		zSlack = 0.5
    },
    japantownBed = {
		x = -784.1,
		y = 987.5,
		z = 28.5,
		xSlack = 2.75,
		ySlack = 2.0,
		zSlack = 5.2
    },
    japantownCouch = {
		x = -784.5,
		y = 976.7,
		z = 28.2,
		xSlack = 1.0,
		ySlack = 0.5,
		zSlack = 0.2
    },
    japantownShower = {
		x = -779.2,
		y = 972.5,
		z = 28.3,
		xSlack = 0.5,
		ySlack = 0.5,
		zSlack = 0.3
    },
	japantownBar = {
		x = -785.2,
		y = 972.2,
		z = 28.3,
		xSlack = 2,
		ySlack = 2,
		zSlack = 1
	},
	corpoplazaBed = {			-- often works
		x = -1613.7,
		y = 358.6,
		z = 49.1,
		xSlack = 3.75,
		ySlack = 3.0,
		zSlack = 0.5
    },
    corpoplazaCouch = {			-- if Z isn't checked, then you rest here on floor 0
		x = -1601.7,
		y = 356.4,
		z = 48.6,
		xSlack = 1.0,
		ySlack = 0.5,
		zSlack = 0.2
    },
    corpoplazaShower = {	--  -1621.249023 353.639587 49.295082
		x = -1622.4,
		y = 353.0,
		z = 49.3,
		xSlack = 1.5,
		ySlack = 1.5,
		zSlack = 1.5
    },
	corpoplazaBar = {
		x = -1608.2,
		y = 351.6,
		z = 49.0,
		xSlack = 1.6,
		ySlack = 1.6,
		zSlack = 1.0
	},
	glenBed = {				--   -1523.772705 -975.173096 90.996445 1.000000
		x = -1523.7,
		y = -975.4,
		z = 91.0,
		xSlack = 2.75,
		ySlack = 2.0,
		zSlack = 0.2
    },
    glenCouch = {
		x = -1520.7,
		y = -976.8,
		z = 86.7,
		xSlack = 1.0,
		ySlack = 0.5,
		zSlack = 0.2
    },
    glenShower = {
		x = -1529.1,
		y = -969.4,
		z = 91.2,
		xSlack = 0.2,
		ySlack = 0.2,
		zSlack = 0.2
    },
	-- partner home coordiates
	-- thanks again DaniLt on nexusmods forums
	-- haven't gotten to any myself so I set the z slack so high it shouldn't matter
	judyBed = {
		x = -897.6,
		y = 1856.9,
		z = 0,
		xSlack = 2.4,
		ySlack = 2,
		zSlack = 500000
	},
	judyBar = {
		x = -905.9,
		y = 1858.9,
		z = 0,
		xSlack = 1.6,
		ySlack = 1,
		zSlack = 500000
	},
	judyCouch = {
		x = -906.2,
		y = 1852.8,
		z = 0,
		xSlack = 4.3,
		ySlack = 2.4,
		zSlack = 500000
	},
	judyShower = {
		x = -898.6,
		y = 1864.3,
		z = 0,
		xSlack = 2,
		ySlack = 2.5,
		zSlack = 500000
	},
	riverCouch = {
		x = 1235.2,
		y = -521.2,
		z = 0,
		xSlack = 2,
		ySlack = 1.8,
		zSlack = 500000
	},
	riverShower = {
		x = 1247.4,
		y = -525,
		z = 0,
		xSlack = 2.5,
		ySlack = 1.6,
		zSlack = 500000
	},
	panamBed = {
		x = 1786.6,
		y = 2250.2,
		z = 0,
		xSlack = 3.2,
		ySlack = 2.5,
		zSlack = 500000
	},
	panamCouch = {
		x = 1790,
		y = 2246.8,
		z = 0,
		xSlack = 2.2,
		ySlack = 2,
		zSlack = 500000
	},
	panamShower = {
		x = 1805.6,
		y = 2226.8,
		z = 0,
		xSlack = 1.6,
		ySlack = 2,
		zSlack = 500000
	}
}

return Positions
