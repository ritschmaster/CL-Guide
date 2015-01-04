PROJECT_NAME = schoolmanager 
INSTALL_DEST_DIR = $(HOME)/quicklisp/local-projects

SQLITE_CMD = sqlite3
DB_FILE = schoolmanager-db.db
SQL_FILE = create-debug-db.sql

all:
	"$(SQLITE_CMD)" "$(DB_FILE)" < "$(SQL_FILE)"

clean:
	rm "$(DB_FILE)"

install:
	cp -r . "$(INSTALL_DEST_DIR)/$(PROJECT_NAME)"

uninstall:
	rm -r "$(INSTALL_DEST_DIR)/$(PROJECT_NAME)"
