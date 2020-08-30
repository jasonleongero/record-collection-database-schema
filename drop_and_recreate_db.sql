DROP DATABASE IF EXISTS `record_collection_database`;
CREATE DATABASE `record_collection_database`;

USE `record_collection_database`;

SOURCE record_collection_database_schema.sql;
SOURCE sample_data.sql;