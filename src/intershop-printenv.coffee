
###

This script echoes the configuration in Bash format so shellscripts can pick it up.

###

'use strict'


############################################################################################################
CND                       = require 'cnd'
rpr                       = CND.rpr
badge                     = 'INTERSHOP/MAIN'
debug                     = CND.get_logger 'debug',     badge
alert                     = CND.get_logger 'alert',     badge
whisper                   = CND.get_logger 'whisper',   badge
warn                      = CND.get_logger 'warn',      badge
help                      = CND.get_logger 'help',      badge
urge                      = CND.get_logger 'urge',      badge
info                      = CND.get_logger 'info',      badge
echo                      = CND.echo
config                    = require 'config'

# echo config
# echo config.get 'app'
# echo config.get 'db'

### TAINT must properly escape values ###
echo "intershop_db_name='#{config.get 'db.name'}'"
echo "intershop_db_user='#{config.get 'db.user'}'"
echo "intershop_db_port='#{config.get 'db.port'}'"
# echo "intershop_python_path='foobar'"
# echo "intershop_tmppath='foobar'"
# echo "intershop_psql_output_path='foobar'"


