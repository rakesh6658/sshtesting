DIR="/home/ec2-user/app"

if [ ! -d "$DIR" ]; then
    echo "Directory does not exist. Creating..."
    mkdir -p "$DIR"
else
    echo "Directory exists."
fi
