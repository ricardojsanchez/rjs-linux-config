#!/bin/sh

function launch_rails_ide {
  DIR=$1
  # Set working dir
  if [ ! -d "${DIR}" ]; then
    echo "call me with a directory, e.g.:"
    echo "${0} /some/path/to/dir"
    return 1
  fi

  gnome-terminal --geometry=130x35+345+250 \
    --tab --working-directory=$DIR -e "script/server" -t "web server" \
    --tab --working-directory=$DIR -e "script/console" -t "irb console" \
    --tab --working-directory=$DIR -e "tail -f log/development.log" -t "dev log" \
    --tab --working-directory=$DIR -e "mysql -u root" -t "mysql server"

  gvim -geometry 130x35+385+0 $DIR &
}
