#!/bin/bash

set -e

rm -f *.lock
rm -f *.gem pkg/*.gem
# Uses bundler gem tasks, outputs the built gem file to pkg subdir.
rake build
/app/release/verify-signature.sh pkg/*.gem
