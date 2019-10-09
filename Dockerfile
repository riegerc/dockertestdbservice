FROM mysql
COPY . /docker-entrypoint-initdb.d
COPY pwd_setting.cnf /etc/mysql/conf.d/
