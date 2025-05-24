#!/bin/bash
# PhantomLink Pro - DEMO VERSION
# This is a demonstration version with limited functionality
# For educational and presentation purposes only
# Full version available for authorized security professionals

VERSION="2.5-DEMO"
OUTPUT_DIR="./phantom_links_demo"

# Default settings
TARGET_URL=""
TECHNIQUE="basic"
DEMO_MODE=true

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Print the demo banner
print_banner() {
  echo -e "${CYAN}"
  echo "╔═════════════════════════════════════════════════════════════════════╗"
  echo "║                    PhantomLink Pro v$VERSION                    ║"
  echo "║                        DEMONSTRATION VERSION                        ║"
  echo "║                                                                     ║"
  echo "║                  Educational & Presentation Only                    ║"
  echo "╚═════════════════════════════════════════════════════════════════════╝"
  echo -e "${NC}"
  echo -e "${YELLOW}⚠️  This is a limited demo version for educational purposes${NC}"
  echo -e "${YELLOW}⚠️  Full functionality available in the professional version${NC}"
  echo ""
}

# Display usage information
show_usage() {
  echo "Usage: ./phantom_link_demo.sh --url <URL> [OPTIONS]"
  echo ""
  echo "Available Options (Demo Version):"
  echo "  --url URL          Target URL for demonstration"
  echo "  --technique TYPE   Demo technique: basic, encoded, visual"
  echo "  --output DIR       Output directory (default: ./phantom_links_demo)"
  echo "  --help             Display this help message"
  echo ""
  echo "Demo Techniques:"
  echo "  basic    - Simple URL encoding demonstration"
  echo "  encoded  - Base64 encoding example" 
  echo "  visual   - Visual obfuscation with homoglyphs (limited)"
  echo ""
  echo "Examples:"
  echo "  ./phantom_link_demo.sh --url https://example.com"
  echo "  ./phantom_link_demo.sh --url https://example.com --technique encoded"
  echo ""
  echo -e "${YELLOW}Note: This demo version has limited functionality.${NC}"
  echo -e "${YELLOW}Full features available in the professional version.${NC}"
}

# Check basic dependencies
check_dependencies() {
  echo -e "${BLUE}[*] Checking dependencies...${NC}"
  
  local deps_ok=true
  for cmd in base64 sed tr; do
    if ! command -v $cmd &> /dev/null; then
      echo -e "${RED}[!] Missing dependency: $cmd${NC}"
      deps_ok=false
    fi
  done
  
  if [ "$deps_ok" = true ]; then
    echo -e "${GREEN}[+] All dependencies are met.${NC}"
  else
    echo -e "${RED}[!] Please install missing dependencies.${NC}"
    exit 1
  fi
}

# Demo: Basic URL encoding
demo_url_encode() {
  local string="$1"
  local length="${#string}"
  local encoded=""
  
  for (( i=0; i<length; i++ )); do
    local c="${string:$i:1}"
    case $c in
      [a-zA-Z0-9.~_-]) encoded+="$c" ;;
      *) printf -v encoded '%s%%%02X' "$encoded" "'$c" ;;
    esac
  done
  
  echo "$encoded"
}

# Demo: Base64 encoding
demo_base64_encode() {
  local input="$1"
  echo -n "$input" | base64 | tr -d '\n'
}

# Demo: Simple homoglyph substitution (limited set)
demo_homoglyphs() {
  local input="$1"
  local result="$input"
  
  # Limited homoglyph demonstration
  result=$(echo "$result" | sed 's/a/а/g' | sed 's/e/е/g' | sed 's/o/о/g')
  
  echo "$result"
}

# Demo: Show obfuscation process
demonstrate_obfuscation() {
  local url="$1"
  local technique="$2"
  
  echo -e "\n${CYAN}═══════════════════════════════════════════════════════${NC}"
  echo -e "${CYAN}         Demonstrating URL Obfuscation Process         ${NC}"
  echo -e "${CYAN}═══════════════════════════════════════════════════════${NC}\n"
  
  echo -e "${BLUE}[1] Original URL:${NC}"
  echo "    $url"
  echo ""
  
  case "$technique" in
    "basic")
      echo -e "${BLUE}[2] Applying URL encoding...${NC}"
      local encoded=$(demo_url_encode "$url")
      echo "    $encoded"
      echo ""
      echo -e "${GREEN}[3] Demo Result:${NC}"
      echo "    https://demo.example.com/redirect?url=$encoded"
      ;;
      
    "encoded")
      echo -e "${BLUE}[2] Applying Base64 encoding...${NC}"
      local b64=$(demo_base64_encode "$url")
      echo "    $b64"
      echo ""
      echo -e "${BLUE}[3] Applying URL encoding to Base64...${NC}"
      local final=$(demo_url_encode "$b64")
      echo "    $final"
      echo ""
      echo -e "${GREEN}[4] Demo Result:${NC}"
      echo "    https://demo.example.com/redirect?data=$final"
      ;;
      
    "visual")
      echo -e "${BLUE}[2] Applying homoglyph substitution (limited demo)...${NC}"
      local homoglyph=$(demo_homoglyphs "$url")
      echo "    $homoglyph"
      echo ""
      echo -e "${YELLOW}    Note: Full version includes extensive Unicode substitutions${NC}"
      echo ""
      echo -e "${GREEN}[3] Demo Result:${NC}"
      echo "    $homoglyph"
      ;;
      
    *)
      echo -e "${RED}[!] Unknown technique: $technique${NC}"
      ;;
  esac
  
  echo -e "\n${CYAN}═══════════════════════════════════════════════════════${NC}\n"
}

# Show feature comparison
show_feature_comparison() {
  echo -e "\n${CYAN}╔════════════════════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║                    Feature Comparison                          ║${NC}"
  echo -e "${CYAN}╚════════════════════════════════════════════════════════════════╝${NC}\n"
  
  printf "%-35s %-15s %-15s\n" "Feature" "Demo Version" "Full Version"
  printf "%-35s %-15s %-15s\n" "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" "━━━━━━━━━━━━━━━" "━━━━━━━━━━━━━━━"
  printf "%-35s ${YELLOW}%-15s${NC} ${GREEN}%-15s${NC}\n" "Basic URL Encoding" "✓ Available" "✓ Available"
  printf "%-35s ${YELLOW}%-15s${NC} ${GREEN}%-15s${NC}\n" "Base64 Encoding" "✓ Available" "✓ Available"
  printf "%-35s ${YELLOW}%-15s${NC} ${GREEN}%-15s${NC}\n" "Homoglyph Substitution" "Limited (3)" "Full (30+)"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Zero-Width Characters" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Polymorphic JavaScript" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Token Binding" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "HTML Smuggling" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Redirect Chains" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Platform Optimization" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Anti-Analysis Features" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Notification System" "✗ Disabled" "✓ Available"
  printf "%-35s ${RED}%-15s${NC} ${GREEN}%-15s${NC}\n" "Expiration Control" "✗ Disabled" "✓ Available"
  
  echo -e "\n${YELLOW}ℹ️  This demo shows basic concepts only${NC}"
  echo -e "${YELLOW}ℹ️  Professional version includes all advanced features${NC}\n"
}

# Create demo output files
create_demo_files() {
  local url="$1"
  local technique="$2"
  
  # Create output directory
  mkdir -p "$OUTPUT_DIR"
  
  # Create a sample HTML file
  cat > "$OUTPUT_DIR/demo_redirect.html" << EOF
<!DOCTYPE html>
<html>
<head>
    <title>PhantomLink Demo</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }
        .demo-container {
            text-align: center;
            padding: 40px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        .demo-badge {
            background-color: #ff9800;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 12px;
            margin-bottom: 20px;
            display: inline-block;
        }
        h1 { color: #333; }
        p { color: #666; line-height: 1.6; }
        .url-display {
            background-color: #f5f5f5;
            padding: 15px;
            border-radius: 5px;
            margin: 20px 0;
            word-break: break-all;
            font-family: monospace;
        }
    </style>
</head>
<body>
    <div class="demo-container">
        <div class="demo-badge">DEMO VERSION</div>
        <h1>PhantomLink Pro Demo</h1>
        <p>This is a demonstration of URL obfuscation techniques.</p>
        <p>In the full version, this would redirect to:</p>
        <div class="url-display">$url</div>
        <p><strong>Technique Used:</strong> $technique</p>
        <p style="color: #ff9800;">⚠️ This demo file is for educational purposes only.</p>
    </div>
</body>
</html>
EOF

  # Create a sample log file
  cat > "$OUTPUT_DIR/demo_log.txt" << EOF
PhantomLink Pro - Demo Log
==========================
Version: $VERSION
Date: $(date)
Target URL: $url
Technique: $technique
Status: Demo execution completed

Note: This is a demonstration log file.
Full logging available in professional version.
EOF

  echo -e "${GREEN}[+] Demo files created in: $OUTPUT_DIR/${NC}"
}

# Main execution function
main() {
  local url=""
  local technique="basic"
  
  # Parse command line arguments
  while [[ $# -gt 0 ]]; do
    case $1 in
      --url)
        url="$2"
        shift 2
        ;;
      --technique)
        technique="$2"
        shift 2
        ;;
      --output)
        OUTPUT_DIR="$2"
        shift 2
        ;;
      --help)
        print_banner
        show_usage
        exit 0
        ;;
      *)
        echo -e "${RED}[!] Unknown option: $1${NC}"
        show_usage
        exit 1
        ;;
    esac
  done
  
  # Print banner
  print_banner
  
  # Validate URL
  if [ -z "$url" ]; then
    echo -e "${RED}[!] Error: URL is required${NC}"
    echo ""
    show_usage
    exit 1
  fi
  
  # Check dependencies
  check_dependencies
  
  # Demonstrate obfuscation
  demonstrate_obfuscation "$url" "$technique"
  
  # Create demo files
  create_demo_files "$url" "$technique"
  
  # Show feature comparison
  show_feature_comparison
  
  # Final message
  echo -e "${GREEN}✅ Demo completed successfully!${NC}"
  echo -e "${CYAN}═══════════════════════════════════════════════════════${NC}"
  echo -e "${BLUE}📁 Demo files created in: $OUTPUT_DIR${NC}"
  echo -e "${BLUE}📄 Check demo_redirect.html and demo_log.txt${NC}"
  echo -e "${CYAN}═══════════════════════════════════════════════════════${NC}"
  echo ""
  echo -e "${YELLOW}💡 Want full functionality?${NC}"
  echo -e "${YELLOW}   Contact for professional version access${NC}"
  echo ""
}

# Execute main function with all arguments
main "$@"