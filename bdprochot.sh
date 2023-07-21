#!/bin/sh
modprobe msr &&
rdmsr 0x1FC &&
wrmsr 0x1FC value
