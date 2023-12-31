#!/bin/bash

# Input JSON file
input_file="input.json"

# Output CSV file
output_file="output2.csv"

# Create the CSV file with headers
echo "ID,Version,Status" > "$output_file"

# Loop through the items in the JSON file
for ((i=0; i<101; i++)); do
  id=$(grep -o '"code": "[^"]*' "$input_file" | sed -n "$((i+1))p" | awk -F ': "' '{print $2}')
  version=$(grep -o '"version": "[^"]*' "$input_file" | sed -n "$((i+1))p" | awk -F ': "' '{print $2}')
  status=$(grep -o '"status": "[^"]*' "$input_file" | sed -n "$((i+1))p" | awk -F ': "' '{print $2}')

  # Append the data to the CSV file without double quotes
  echo "$id,$version,$status" | sed 's/"//g' >> "$output_file"
done

echo "Data has been extracted and saved to $output_file."


