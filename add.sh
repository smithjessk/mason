#!/bin/bash -e

sudo mysql mason -e "create table if not exists memories
    (memory MEDIUMBLOB NOT NULL,
    added TIMESTAMP NOT NULL,
    last_accessed TIMESTAMP)"
sudo mysql mason -e "insert into memories (memory, added) VALUES (\"$1\", NOW())"
