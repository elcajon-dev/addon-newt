#!/command/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: Newt
# Runs the Newt client
# ==============================================================================
declare -a options

bashio::log.info 'Starting Newt client...'

options+=(--id "$(bashio::config newt_id)")
options+=(--secret "$(bashio::config newt_secret)")
options+=(--endpoint "$(bashio::config pangolin_endpoint)")

# Set log level if exists 
if bashio::config.exists log_level; then
    log_level=$(bashio::string.lower "$(bashio::config log_level)")
    case "${log_level}" in
        all)
            log_level="DEBUG"
            ;;
        trace)
            log_level="DEBUG"
            ;;
        debug)
            log_level="DEBUG"
            ;;
        info)
            log_level="INFO"
            ;;
        notice)
            log_level="INFO"
            ;;
        warning)
            log_level="WARN"
            ;;
        error)
            log_level="ERROR"
            ;;
        fatal)
            log_level="FATAL"
            ;;
        off)
            log_level="FATAL"
            ;;
        *)
            bashio::exit.nok "Unknown log_level: ${log_level}"
    esac
    options+=(--log-level "$log_level")
fi


# Run Newt client
exec /opt/newt "${options[@]}"
