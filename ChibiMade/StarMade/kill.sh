#!/bin/bash
lsof -ti tcp:4242 | xargs kill
