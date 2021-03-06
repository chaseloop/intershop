
/* ###################################################################################################### */
-- select * from OS.nodejs_versions;
-- select * from OS.env;
-- \set log          '/tmp/psql-output'
-- do $$ begin perform log( 'machine:' ); end; $$;

\pset tuples_only off

-- -- ---------------------------------------------------------------------------------------------------------
-- -- select 'OS.machine' \g :out
-- \echo
-- \pset title 'OS.machine'
-- select * from OS.machine \g :out

-- ---------------------------------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------------------------
-- select 'U.variables' \g :out
\echo
-- do $$ begin perform log(); end; $$;
-- do $$ begin perform log( 'U.variables' ); end; $$;
-- select * from U.variables order by key \g :out

do $$ begin perform log(); end; $$;
do $$ begin perform log( 'U.variables (excerpt):' ); end; $$;
select * from U.variables
  where key ~ '^OS/machine/|intershop'
  order by key \g :out

do $$ begin perform log( 'PostGreSQL version:', version() ); end; $$;
do $$ begin perform log( 'is dev:', U.truth( OS.is_dev() ) ); end; $$;


\quit

