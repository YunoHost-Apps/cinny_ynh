#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

nodejs_version=20

#=================================================
# PERSONAL HELPERS
#=================================================

_patch_build_config() {
    sourcedir=$1

    # Required for sub-path installation
    sed -i \
        "s|base: '.*'|base: '$path'|" \
        "$1/build.config.ts"
}

_npm_build_install() {
    sourcedir=$1
    targetdir=$2

    ynh_use_nodejs
    pushd "$sourcedir" || ynh_die "Could not pushd $sourcedir"
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" \
            "$ynh_npm" ci
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" \
            "$ynh_npm" run build
        ynh_exec_warn_less ynh_exec_as "$app" env "$ynh_node_load_PATH" \
            "$ynh_npm" cache clean --force
    popd || ynh_die "Could not popd"

    ynh_secure_remove --file="$targetdir"
    mv "$sourcedir/dist" "$targetdir"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
