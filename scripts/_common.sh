#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
nodejs_version=14

#=================================================
# PERSONAL HELPERS
#=================================================

ynh_webpath_is_domain_root () {
    local -A args_array=( [p]=path_url= )
    local path_url
    ynh_handle_getopts_args "$@"

    [[ "$path_url" != "/" ]] && [[ "$path_url" != "" ]]
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
