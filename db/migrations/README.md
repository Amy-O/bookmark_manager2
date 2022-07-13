SETTING UP DATABASE
Connect to psql

Create the database using the psql command CREATE DATABASE bookmark_manager;

Connect to the database using the pqsl command \c bookmark_manager;

Run the query we have saved in the file 01_create_bookmarks_table.sql 



SETTING UP TEST DATABASE
Create the database using the psql command CREATE DATABASE bookmark_manager_test;

Connect to the database using the pqsl command \c bookmark_manager-test;

Run the query we have saved in the file 01_create_bookmarks_table.sql



bundle

CREATE DATABASE bookmark_manager;

rackup -p 3000
