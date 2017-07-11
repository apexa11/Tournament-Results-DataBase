# Tournament Planner

by Apexa, in fulfillment of Udacity's [Full-Stack Web Developer Nanodegree]

# About

This project provides a Python module that uses a PostgreSQL database to keep track of players and matches in a game tournament, using the Swiss pairing system.

# How to run

This directory can be initiated with Vagrant by executing the command vagrant up within the vagrant/ directory. The test cases can be run by executing the following commands:

vagrant ssh
cd /vagrant
psql -> create database tournament; -> \c tournament -> \i tournament.sql -> \q
cd /vagrant/tournament
python tournament_test.py

You will see information for noticing successfully done!!