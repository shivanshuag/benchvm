#!/bin/bash
echo 'starting XEN...'
xend start

if [ $? -ne 0 ]; then
  echo "ERROR: failed to load xend"
else
  echo "SUCCESS: XEN started..."
fi
