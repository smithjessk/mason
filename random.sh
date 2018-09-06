#!/bin/bash -e

sudo mysql mason -e "SELECT memory FROM memories ORDER BY RAND() LIMIT 1"
