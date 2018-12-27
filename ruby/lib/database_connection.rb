def new_connection
	PG.connect(host: HOST, dbname: DATABASE, user: USERNAME, password: PASSWORD)
end