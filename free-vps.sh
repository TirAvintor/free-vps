#!/bin/bash

# COLORS - RED THEME
R="\e[1;31m"  # Bright Red
G="\e[1;32m"  # Green
Y="\e[1;33m"  # Yellow
B="\e[1;34m"  # Blue
C="\e[1;36m"  # Cyan
M="\e[1;35m"  # Magenta
W="\e[1;37m"  # White
N="\e[0m"     # Reset

# TIRAVINTOR NETWORK ASCII ART
print_tiravintor_logo() {
    echo -e "\n${B}============================================================${N}"
    echo -e "${W}   _______ _                 _       _                        ${N}"
    echo -e "${W}  |__   __(_)      /\       (_)     | |                       ${N}"
    echo -e "${W}     | |   _ _ __ /  \__   ___ _ __ | |_ ___  _ __            ${N}"
    echo -e "${W}     | |  | | '__/ /\ \ \ / / | '_ \| __/ _ \| '__|           ${N}"
    echo -e "${W}     | |  | | | / ____ \ V /| | | | | || (_) | |              ${N}"
    echo -e "${W}     |_|  |_|_|/_/    \_\_/ |_|_| |_|\__\___/|_|              ${N}"
    echo -e "${Y}                  N E T W O R K                               ${N}"
    echo -e "${B}============================================================${N}"
    echo -e "${Y}                    Made by TirAvintor                       ${N}\n"
}

# NEW UI STYLE FUNCTIONS
print_box() {
    local text="$1"
    local color="$2"
    local width=52
    local padding=$(( (width - ${#text} - 2) / 2 ))
    
    echo -e "${color}╔$(printf '═%.0s' $(seq 1 $((width-2))))╗${N}"
    printf "${color}║%*s${W}%s${color}%*s║${N}\n" $padding "" "$text" $((padding - ((${#text} % 2) ? 1 : 0))) ""
    echo -e "${color}╚$(printf '═%.0s' $(seq 1 $((width-2))))╝${N}"
}

print_header() {
    clear
    print_tiravintor_logo
    echo -e "${B}============================================================${N}"
    echo -e "${W}            DEVELOPMENT MANAGEMENT CONSOLE             ${N}"
    echo -e "${B}============================================================${N}\n"
}

print_option() {
    local num="$1"
    local text="$2"
    local color="$3"
    
    echo -e "  ${color}────────────────────────────────────────────────────────────${N}"
    echo -e "  ${W}  [${R}$num${W}]  ${Y}$text$(printf '%*s' $((33 - ${#text} - 6)))${N}"
    echo -e "  ${color}────────────────────────────────────────────────────────────${N}\n"
}

print_status() {
    local text="$1"
    local color="$2"
    echo -e "\n${R}▶▶${color} ${text}${N}\n"
}

print_divider() {
    echo -e "${B}============================================================${N}"
}

print_footer() {
    echo -e "${B}────────────────────────────────────────────────────────────${N}"
    echo -e "${W}     TirAvintor Network © 2026 - All Rights Reserved ${N}"
    echo -e "${B}────────────────────────────────────────────────────────────${N}\n"
}

# MAIN MENU LOOP
while true; do
    print_header
    
    echo -e "${B}============================================================${N}"
    echo -e "${Y}                    MAIN OPTIONS                      ${N}"
    echo -e "${B}============================================================${N}\n"
    
      print_option "1" "🔧 Firebase Studio Tool Setup" "$B"
      print_option "2" "⚡ Firebase Studio VPS Maker" "$B"
      print_option "3" "🌐 VPS (Any + KVM)" "$B"
      print_option "4" "❌ Exit" "$B"

    
    print_divider
    echo -ne "${R}▶▶${W} Select Option [${R}1-4${W}] : ${Y}"
    read -p "" op
    echo -ne "${N}"
    
    case $op in
    
    # =========================================================
    # (1) FIREBASE STUDIO TOOL SETUP - ENHANCED WITH TIRAVINTOR THEME
    # =========================================================
    1)
        clear
        print_tiravintor_logo
        print_divider
        print_status "🔧 FIREBASE STUDIO TOOL SETUP" "$B"
        echo
        
        echo -e "${B}============================================================${N}"
        echo -e "${B}                    FIREBASE STUDIO DEVELOPMENT TOOL SETUP               ${N}"
        echo -e "${B}============================================================${N}\n"
        
        echo -e "${Y}🧹 Cleaning up old files...${N}"
        sleep 2
        echo -e "${Y}────────────────────────────────────────────────────────────${N}"
        
        rm -rf /myapp
        rm -rf /flutter
        
        if [ ! -d ".idx" ]; then
            echo -e "${G}📁 Creating .idx directory...${N}"
            sleep 2
            echo -e "${Y}────────────────────────────────────────────────────────────${N}"
            
            mkdir .idx
            cd .idx
            
            echo -e "${C}📝 Creating dev.nix configuration...${N}"
            sleep 2
            
            cat <<EOF > dev.nix
{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = with pkgs; [
    unzip
    openssh
    git
    qemu_kvm
    sudo
    cdrkit
    cloud-utils
    qemu
  ];

  env = {
    EDITOR = "nano";
  };

  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];

    workspace = {
      onCreate = { };
      onStart = { };
    };

    previews = {
      enable = false;
    };
  };
}
EOF
            
            clear
            print_tiravintor_logo
            echo -e "${Y}────────────────────────────────────────────────────────────${N}"
            echo -e "\n${G}✅ FIREBASE STUDIO TOOL SETUP COMPLETE!${N}"
            echo -e "${B}────────────────────────────────────────────────────────────${N}"
            echo -e "${W} ${G}Status${W}   : ${Y}Ready to use${W}                        ${N}"
            echo -e "${W} ${G}Location${W} : ${Y}~/.idx${W}                       ${N}"
            echo -e "${W} ${G}Tool${W}     : ${Y}Firebase Studio Development Environment${W}         ${N}"
            echo -e "${W} ${G}Version${W}  : ${Y}Stable 24.05${W}                        ${N}"
            echo -e "${B}────────────────────────────────────────────────────────────${N}"
        else
            clear
            print_tiravintor_logo
            echo -e "${B}────────────────────────────────────────────────────────────${N}"
            echo -e "${Y} ⚠ Firebase Studio Tool already setup — skipping.${W}               ${N}"
            echo -e "${W} Location: ${Y}~/.idx${W}                          ${N}"
            echo -e "${B}────────────────────────────────────────────────────────────${N}"
        fi
        
        echo -e "\n${B}============================================================${N}"
        echo -ne "${R}▶▶${W} Press Enter to return to main menu...${N}"
        read -p ""
        ;;
    
    # =========================================================
    # (2) FIREBASE STUDIO VPS MAKER — ENHANCED WITH TIRAVINTOR THEME
    # =========================================================
    2)
        clear
        print_tiravintor_logo
        print_divider
        print_status "⚡ FIREBASE STUDIO VPS MAKER" "$B"
        echo
        
        echo -e "${B}============================================================${N}"
        echo -e "${W}                    FIREBASE STUDIO VPS CREATION TOOL                  ${N}"
        echo -e "${B}============================================================${N}\n"
        
        echo -e "${C}📡 Connecting to GitHub repository...${N}"
        sleep 2
        echo -e "${Y}────────────────────────────────────────────────────────────${N}"
        
        echo -e "\n${R}▶▶${W} Executing Firebase Studio VPS Maker script...${N}"
        sleep 2
        
        bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/vps-idx.sh)
        
        echo -e "\n${B}============================================================${N}"
        echo -e "${R}▶▶${W} Firebase Studio VPS Maker execution completed.${N}"
        echo -ne "${R}▶▶${W} Press Enter to return to main menu...${N}"
        read -p ""
        ;;

    # =========================================================
    # (3) REAL VPS (ANY + KVM)
    # =========================================================
    3)
        clear
        print_tiravintor_logo
        print_divider
        print_status "🌐 VPS (ANY + KVM)" "$B"
        echo

        echo -e "${B}============================================================${N}"
        echo -e "${W}                    VPS DEPLOYMENT MODULE               ${N}"
        echo -e "${B}============================================================${N}\n"

        echo -e "${Y}🔍 Running disk & system preparation (dd.sh)...${N}"
        sleep 2
        echo -e "${Y}────────────────────────────────────────────────────────────${N}"
        
        bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/running-disk.sh)

        echo -e "\n${G}✅ Disk preparation completed.${N}\n"
        sleep 2
        echo -e "${Y}────────────────────────────────────────────────────────────${N}"

        echo -e "${Y}🚀 Launching VPS installer (vm2.sh)...${N}"
        sleep 2
        echo -e "${Y}────────────────────────────────────────────────────────────${N}"
        
        bash <(curl -s https://raw.githubusercontent.com/TirAvintor/free-vps/refs/heads/main/real-vps.sh)

        echo -e "\n${B}============================================================${N}"
        echo -e "${R}▶▶${W} VPS process finished.${N}"
        echo -ne "${R}▶▶${W} Press Enter to return to main menu...${N}"
        read -p ""
        ;;

    
    # =========================================================
    # (4) EXIT - ENHANCED WITH TIRAVINTOR THEME
    # =========================================================
    4)
        clear
        print_tiravintor_logo
        echo -e "${B}============================================================${N}"
        echo -e "${W}                    SESSION TERMINATED                   ${N}"
        echo -e "${B}============================================================${N}\n"
        
        echo -e "${B}────────────────────────────────────────────────────────────${N}"
        echo -e "${W}          Thank you for using TirAvintor Network!           ${N}"
        echo -e "${Y}                    Made with ❤️ by TirAvintor               ${N}"
        echo -e "${B}────────────────────────────────────────────────────────────${N}"
        
        echo -e "\n${Y}👋 Goodbye! Come back soon...${N}\n"
        print_footer
        sleep 2
        exit 0
        ;;
    
    *)
        echo -e "\n${B}============================================================${N}"
        echo -e "${W}                    ❌ INVALID OPTION!                     ${N}"
        echo -e "${Y}          Please choose between 1-4 only                ${N}"
        echo -e "${B}============================================================${N}"
        sleep 2
        ;;
    esac
done
