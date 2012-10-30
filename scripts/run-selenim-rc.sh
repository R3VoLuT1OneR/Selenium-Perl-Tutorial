#!/bin/bash

java -jar share/selenium-server-standalone-2.25.0.jar -forcedBrowserMe *googlechrome -port 4444 &
java -jar share/selenium-server-standalone-2.25.0.jar -forcedBrowserMe *googlechrome -port 5555 &
