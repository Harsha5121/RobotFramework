*** Settings ***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup     Connect To Database     pymysql      ${DBname}   ${DBuser}   ${DBpass}   ${DBhosṭ}   ${DBport}

Suite Teardown   Disconnect From Database

*** Variables ***
${DBname}           mydb
${DBuser}           root
${DBpass}           root
${DBhosṭ}           Localhost
${DBport}           3306


*** Test Cases ***
Create person table
    ${output}=  execute sql string    Create table person (id integer,firstname varchar(20),lastname varchar(20))
    log to console    ${output}
    should be equal as strings    ${output}     None