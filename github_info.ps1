# Author: Haitham Aouati
# Github: https://github.com/haithamaouati

param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$username
)

# Make a GET request to the GitHub API
$response = Invoke-RestMethod -Uri "https://api.github.com/users/$username" -Method Get

# Check if the request was successful
if ($response.StatusCode -ne 200) {
    Write-Host "Failed to retrieve user information."
    exit 1
}

# Retrieve desired information from the response
$name = $response.name
$bio = $response.bio
$followers = $response.followers
$following = $response.following
$public_repos = $response.public_repos

# Display the user information
Write-Host "Username: $username"
Write-Host "Name: $name"
Write-Host "Bio: $bio"
Write-Host "Followers: $followers"
Write-Host "Following: $following"
Write-Host "Public Repositories: $public_repos"

