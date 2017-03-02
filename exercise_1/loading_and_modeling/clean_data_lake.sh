#!/bin/bash

# save my current directory

MY_DIR=$(pwd)

# create staging directory
rm ~/staging/exercise_1/*
rmdir ~/staging/exercise_1
rmdir ~/staging

# remove files from hdfs
hdfs dfs -rm /user/w205/hospital_compare/Measures.csv
hdfs dfs -rm  /user/w205/hospital_compare/effective_care.csv
hdfs dfs -rm  /user/w205/hospital_compare/hospitals.csv
hdfs dfs -rm /user/w205/hospital_compare/readmission.csv
hdfs dfs -rm /user/w205/hospital_compare/surveys_responses.csv

# remove hdfs directory
hdfs dfs -rmdir /user/w205/hospital_compare

# change directory back to the original

cd $MY_DIR

# clean exit

exit

