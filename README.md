# logstashUtils
Configuration and SQLs for logstash using to index Activate DB data to Elasticsearch in AWS.

# Installation

logstash and logstash-input-jdbc must be installed by:

`brew install logstash`

`logstash-plugin install logstash-input-jdbc`


## File explanation:
### covance.conf

- A configuration file for using with logstash with several JDBC input plugins that index
data from a TOGO database to Elasticsearch database in AWS. Attention needs to be paid to the 
`schedule` update interval and the location of the SQL files .

### Delete and mapping the ES database

The two shell scripts `delete.sh` and `mapping.sh` perform the deletion of the ES database
and defining the mapping of the ES database, respectively.

### *.sql files

The SQLs used in the configuration covance.conf

### Jar file for Postgres JDBC driver
postgresql-9.4.1211.jar

## Running logstash
`logstash -f convance.conf`
