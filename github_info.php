<?php

// Author: Haitham Aouati
// GitHub: https://github.com/haithamaouati

// Check if username is provided as argument
if ($argc < 2) {
    echo "Please provide a username as an argument." . PHP_EOL;
    exit(1);
}

// Set the GitHub username
$username = $argv[1];

// Make a GET request to the GitHub API
$url = "https://api.github.com/users/{$username}";
$options = [
    "http" => [
        "method" => "GET",
        "header" => "User-Agent: PHP"
    ]
];
$context = stream_context_create($options);
$response = file_get_contents($url, false, $context);

// Check if the request was successful
if ($response === false) {
    echo "Failed to retrieve user information." . PHP_EOL;
    exit(1);
}

// Parse the JSON response to retrieve desired information
$data = json_decode($response, true);
$name = $data["name"];
$bio = $data["bio"];
$followers = $data["followers"];
$following = $data["following"];
$public_repos = $data["public_repos"];

// Display the user information
echo "Username: {$username}" . PHP_EOL;
echo "Name: {$name}" . PHP_EOL;
echo "Bio: {$bio}" . PHP_EOL;
echo "Followers: {$followers}" . PHP_EOL;
echo "Following: {$following}" . PHP_EOL;
echo "Public Repositories: {$public_repos}" . PHP_EOL;

