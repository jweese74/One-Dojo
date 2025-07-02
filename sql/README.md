# SQL Schema

This directory contains SQL scripts to set up the database schema for One Dojo.
Run these scripts sequentially when bootstrapping a new database.

```bash
mysql -u root -p one_dojo < 001_create_students.sql
mysql -u root -p one_dojo < 002_create_classes.sql
...
```
