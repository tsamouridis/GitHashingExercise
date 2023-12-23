# Tsamouridis Anastasios Athanasios

# Check if exactly one argument (4-digit integer) is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <4-digit integer>"
    exit 1
fi

# Check if the argument is a 4-digit integer
if ! [[ $1 =~ ^[0-9]{4}$ ]]; then
    echo "Input Error: A 4-digit integer should be provided."
    exit 1
fi

input=$1

# Hash the input using SHA-256 and save the output to hash_output.txt
echo -n "$input" | sha256sum | awk '{print $1}' > hash_output.txt

echo "Hash of $input saved in hash_output.txt"
