#!/bin/bash

# Pizza
#
# LICENSE:    MIT
#
# @project    foosball
# @package    ChromeExtension
# @author     André Lademann <vergissberlin@googlemail.com>
# @copyright  Copyright (c) 2014 andrelademann.de (http://www.andrelademann.de)
# @license    http://andrelademann.de/license
# @since      2014-12-18 - 11:53:21 PM


# 1. Update repository
cd ~/foosball
git checkout develop
git pull

# 2. Copy flow file
cat ../node-red/flows_foosball.js > flows_foosball.js

# 3. Add and commit changes
git commit -am"Deploy new flow from Raspberry PI"

# 4. Push and log
git push >> ~/deploy.log
