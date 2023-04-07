#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

cinny_install_config_file() {
    # This helper detects if default_home_server is matrix.org to prevent duplicates in the list.

    # Add a Json element in the config file
    if [[ "$default_home_server" == "matrix.org" ]]; then
        default_home_server_list=""
    else
        default_home_server_list="\"$default_home_server\",\n    "
    fi

    ynh_add_config --template="../conf/config.json" --destination="$install_dir/config.json"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
