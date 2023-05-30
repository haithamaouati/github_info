
#!/bin/bash

# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

# Check if username is provided as argument
if [ $# -eq 0 ]; then
    echo "Please provide a username as an argument."
    exit 1
fi

# Set the GitHub username
username=$1

# Make a GET request to the GitHub API
response=$(curl -s "https://api.github.com/users/$username")

# Check if the request was successful
if [ $? -ne 0 ]; then
    echo "Failed to retrieve user information."
    exit 1
fi

# Parse the JSON response to retrieve desired information
name=$(echo "$response" | jq -r '.name')
bio=$(echo "$response" | jq -r '.bio')
followers=$(echo "$response" | jq -r '.followers')
following=$(echo "$response" | jq -r '.following')
public_repos=$(echo "$response" | jq -r '.public_repos')

# Display the user information
echo "Username: $username"
echo "Name: $name"
echo "Bio: $bio"
echo "Followers: $followers"
echo "Following: $following"
echo "Public Repositories: $public_repos"
