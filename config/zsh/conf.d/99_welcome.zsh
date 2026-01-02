HOUR=$(date +%H)
FULL_DATE=$(date +'%A %d %B %Y %H:%M')
OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d '"' -f 2)
IP_LOCAL=$(hostname -I | awk '{print $1}')

# --- Логіка привітання ---
if (( $HOUR < 6 )); then
    GREETING="Добраніч 󰖔 "
elif (( $HOUR < 12 )); then
    GREETING="Доброго ранку  "
elif (( $HOUR < 18 )); then
    GREETING="Доброго дня  "
else
    GREETING="Доброго вечора 󰚵 "
fi

# --- Виведення ---
echo "\033[1;33m 󰃚  $GREETING пане Романе!\033[0m"
echo "\033[36m   Дата: $FULL_DATE\033[0m"
echo "\033[31m---------------------\033[0m \033[34mСистемна Інформація\033[0m \033[31m----------------------\033[0m"
echo "\033[32m   Дистрибутив :\033[0m \033[33m$OS_NAME\033[0m"
echo "\033[32m   Ядро        :\033[0m \033[34m$(uname -r)\033[0m"
echo "\033[32m   Uptime      :\033[0m \033[35m$(uptime -p | sed 's/up //')\033[0m"
echo "\033[32m 󱦂  Локальна IP :\033[0m \033[37m$IP_LOCAL\033[0m"
echo "\033[32m   Оболонка    :\033[0m \033[37mZsh $ZSH_VERSION\033[0m"
DISK_INFO=$(df -h "$HOME" | tail -1)
read -r _ TOTAL USED FREE _ _ <<< "$DISK_INFO"
echo "\033[32m   Диск (~)    :\033[0m \033[36mУсього:\033[0m \033[35m$TOTAL\033[0m \033[36mВільно:\033[0m \033[32m$FREE\033[0m \033[36mЗанято:\033[0m \033[31m$USED\033[0m"
echo "\033[33m----------------------------------------------------------------\033[0m"
