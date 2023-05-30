# github_info
GitHub User Information

A bunches scripts written in `Bash`, `Python`, `PowerShell` and `PHP` that uses the GitHub API to retrieve public information about a user.

## Table of Contents
- [Prerequisites](#prerequisites)
  - [Bash](#bash)
  - [Python](#python)
  - [PowerShell](#powershell)
  - [PHP](#php)

### Prerequisites

- **jq**: a command-line JSON processor.
  - `pkg install -y jq`
- **requests**: library to make HTTP requests.
  - `pip install requests`

#### Bash
```bash
./github_info.sh octocat
```

#### Python
```python
python github_info.py octocat
```

#### PowerShell
```powershell
.\github_info.ps1 octocat
```

#### PHP
```php
php github_info.php octocat
```