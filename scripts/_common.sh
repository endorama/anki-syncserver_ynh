#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

# Generate environment variables for sync users
generate_sync_user_env() {
    local env_vars=""
    local user_num=1
    
    for i in {1..5}; do
        local var_name="sync_user_${i}"
        local value="${!var_name:-}"
        
        if [ -n "$value" ]; then
            env_vars="${env_vars}Environment=\"SYNC_USER${i}=${value}\"\n"
        else
            env_vars="${env_vars}#Environment=\"SYNC_USER${i}=\"\n"
        fi
    done
    
    echo -e "$env_vars"
}

# Generate MAX_SYNC_PAYLOAD_MEGS environment variable
generate_max_payload_env() {
    local max_payload="${max_sync_payload_megs:-}"
    
    if [ -n "$max_payload" ] && [ "$max_payload" -gt 0 ]; then
        echo "Environment=\"MAX_SYNC_PAYLOAD_MEGS=${max_payload}\""
    else
        echo "#Environment=\"MAX_SYNC_PAYLOAD_MEGS=\""
    fi
}

# Configure systemd service with environment variables
configure_systemd_service() {
    local sync_user_env=$(generate_sync_user_env)
    local max_payload_env=$(generate_max_payload_env)
    
    # Replace placeholders in systemd service file
    ynh_add_systemd_config
    
    # Now replace the user environment variables
    local i
    for i in {1..5}; do
        local var_name="sync_user_${i}"
        local value="${!var_name:-}"
        
        if [ -n "$value" ]; then
            ynh_replace_string "__SYNC_USER_${i}__" "Environment=\"SYNC_USER${i}=${value}\"" "/etc/systemd/system/$app.service"
        else
            ynh_replace_string "__SYNC_USER_${i}__" "#Environment=\"SYNC_USER${i}=\"" "/etc/systemd/system/$app.service"
        fi
    done
    
    # Replace MAX_SYNC_PAYLOAD_MEGS
    if [ -n "$max_sync_payload_megs" ] && [ "$max_sync_payload_megs" -gt 0 ]; then
        ynh_replace_string "__MAX_SYNC_PAYLOAD_MEGS__" "Environment=\"MAX_SYNC_PAYLOAD_MEGS=${max_sync_payload_megs}\"" "/etc/systemd/system/$app.service"
    else
        ynh_replace_string "__MAX_SYNC_PAYLOAD_MEGS__" "#Environment=\"MAX_SYNC_PAYLOAD_MEGS=\"" "/etc/systemd/system/$app.service"
    fi
    
    systemctl daemon-reload
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

