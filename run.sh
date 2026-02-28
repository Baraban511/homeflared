#!/usr/bin/with-contenv bashio
# ==============================================================================
# Cloudflare Tunnel Addon - Script de démarrage
# ==============================================================================

# Récupérer le token depuis la configuration de l'addon
TUNNEL_TOKEN=$(bashio::config 'tunnel_token')

# Vérifier que le token est défini
if [ -z "${TUNNEL_TOKEN}" ]; then
  bashio::log.fatal "No token specified!"
  bashio::log.fatal "Please specify a token in app's configuration"
  exit 1
fi

# Afficher la version de cloudflared
bashio::log.info "Cloudflared version:"
cloudflared --version

# Lancer le tunnel Cloudflare
bashio::log.info "Starting cloudflared..."
exec cloudflared tunnel --no-autoupdate run --token "${TUNNEL_TOKEN}"
