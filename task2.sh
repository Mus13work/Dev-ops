#!/bin/bash

user_name="training1.user1@eappsys.com"
pass_word="Oracle@123456"
http_method="GET"
url="https://eappsys-training-lra1kirsflzz-ld.integration.ocp.oraclecloud.com"
api_url="/ic/api/integration/v1/integrations"

full_url="$url$api_url"
echo "$full_url"

curl_cmd="curl -o file.json -u $user_name:$pass_word -H 'Content-Type: application/json' -X $http_method $full_url"

echo "Making the following HTTP request:"
echo "URL: $full_url"
echo "HTTP Method: $http_method"
echo "Username: $user_name"
echo "Password: $pass_word"

# Execute the cURL command and capture the response
response=$(eval "$curl_cmd")




