#!/bin/sh

# Line above is highlighted correctly, line below is not:

#!/bin/sh
export TEST=testing

# However it is recognized when followed by an empty line:

#!/bin/sh

export TEST=testing
