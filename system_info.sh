echo "====================================================================================="
echo "                               SYSTEM INFORMATION REPORT                             "
echo "====================================================================================="
echo ""
echo "Date and Time: $(date)"
echo "Logged in as: $(whoami)"
echo "The system is been running for $(uptime -p)"
echo ""
echo "-----General Computer system information-----"
hostnamectl
echo ""
echo "----------DISK USAGE----------"
df -h
echo ""
echo "---------MEMORY USAGE---------"
free -h
echo ""
echo "---RUNNING PROCESSES (top 5)---"
ps aux --sort=-%cpu | head -6
echo ""
echo "-----Overall CPU Usage-----"
top -bn1 | grep "Cpu(s)"
echo "====================================================================================="

