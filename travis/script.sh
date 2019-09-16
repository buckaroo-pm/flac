#!/bin/bash

buckaroo install

if [ $BUCKAROO_USE_BAZEL ]
then

bazel build //:flac
bazel build //:flac++

else

buck build -c ui.superconsole=DISABLED //:flac
buck build -c ui.superconsole=DISABLED //:flac++

fi
