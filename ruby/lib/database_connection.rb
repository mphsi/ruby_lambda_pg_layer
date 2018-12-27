def new_connection(params = {})
	PG.connect(host: params['host'], dbname: params['database'], user: params['username'], password: params['password'])
end