![watchers](https://custom-icon-badges.demolab.com/github/watchers/haithamaouati/github_info?logo=eye)
![stars](https://custom-icon-badges.demolab.com/github/stars/haithamaouati/github_info?logo=star)
![forks](https://custom-icon-badges.demolab.com/github/forks/haithamaouati/github_info?logo=repo-forked)
![license](https://custom-icon-badges.demolab.com/github/license/haithamaouati/github_info?logo=law)

# github_info

Bunches scripts written in `Bash`, `Python`, `PowerShell`, `PHP` that uses the GitHub API to retrieve public information about a user.

## Table of Contents
- [Prerequisites](#prerequisites)
  - [Bash](#bash)
  - [Python](#python)
  - [PowerShell](#powershell)
  - [PHP](#php)
- [Disclaimer](#disclaimer)
- [License](#license)

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

## Disclaimer
> **Warning**:
> We are not responsible for any misuse or damage caused by those scripts. use those tools at your own risk!

## License
This repository is under [Unlicense License](https://github.com/haithamaouati/github_info/blob/main/LICENSE).
