# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

import requests
import sys

# Check if username is provided as argument
if len(sys.argv) < 2:
    print("Please provide a username as an argument.")
    sys.exit(1)

# Set the GitHub username
username = sys.argv[1]

# Make a GET request to the GitHub API
response = requests.get(f"https://api.github.com/users/{username}")

# Check if the request was successful
if response.status_code != 200:
    print("Failed to retrieve user information.")
    sys.exit(1)

# Parse the JSON response to retrieve desired information
data = response.json()
name = data.get("name")
bio = data.get("bio")
followers = data.get("followers")
following = data.get("following")
public_repos = data.get("public_repos")

# Display the user information
print(f"Username: {username}")
print(f"Name: {name}")
print(f"Bio: {bio}")
print(f"Followers: {followers}")
print(f"Following: {following}")
print(f"Public Repositories: {public_repos}")
