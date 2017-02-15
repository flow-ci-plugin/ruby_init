# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

echo '=================================================='
# ************************************************************
#
# This step will init your project
#
#   Variables used:
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_RVM_VERSION
#     $FLOW_RUBY_VERSION
#     $FLOW_NODE_VERSION
#     $FLOW_GEM_VERSION
#     $FLOW_BUNDLE_VERSION
#
# ************************************************************

source $HOME/.rvm/scripts/rvm
source $HOME/.nvm/nvm.sh
flow_cmd "echo $FLOW_PROJECT_NAME" --echo
flow_cmd "rvm -v" --echo
flow_cmd "nvm use 0.10.32" --echo
flow_cmd "rvm use $FLOW_VERSION --install --binary --fuzzy" --echo
flow_cmd "ruby -v" --echo
flow_cmd "node -v" --echo
flow_cmd "gem -v" --echo
flow_cmd "gem install bundler rake" --echo
flow_cmd "bundle -v" --echo

FLOW_RVM_VERSION="$(rvm --version 2>&1)"
FLOW_RUBY_VERSION="$(ruby -v 2>&1)"
FLOW_NODE_VERSION="$(node -v 2>&1)"
FLOW_GEM_VERSION="$(gem -v 2>&1)"
FLOW_BUNDLE_VERSION="$(bundle -v 2>&1)"
