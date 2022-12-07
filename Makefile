.DEFAULT_GOAL = help

db-dump:
	@echo "Dumping database..."	
	scripts/db-dump.sh

db-load:
	@echo "Loading database..."
	scripts/db-load.sh

nuke-ruby:
	@echo "Nuking ruby..."
	scripts/nuke-ruby.sh

nuke-sidekiq:
	@echo "Nuking sidekiq..."
	scripts/nuke-sidekiq.sh

help:
	@echo "Available commands:"
	@echo "  db-dump: Dump database"
	@echo "  db-load: Load database"
	@echo "  nuke-ruby: Nuke ruby"
	@echo "  nuke-sidekiq: Nuke sidekiq"
	@echo "  help: Show this help"