from pathlib import Path
from logging import INFO, ERROR

# Paths
path_working_directory = Path(__file__).parent.parent

path_credentials_directory = path_working_directory / 'credentials'
path_credentials_directory.mkdir(parents=True, exist_ok=True)

path_data_directory = path_working_directory / 'data'
path_data_directory.mkdir(parents=True, exist_ok=True)

path_logs_directory = path_working_directory / 'logs'
path_logs_directory.mkdir(parents=True, exist_ok=True)

# Scenario: Sync Groups and Zulip
zulip_sync = {
    'logging_level': INFO,
    'google_domain': '',
    'mandatory_members': [],
    'sleep_time': 60 * 10
}

# Scenario: Create Google Groups
create_google_groups = {
    'logging_level': INFO,
    'google_domain': '',
    'user_filter_query': '',
    'mandatory_members': []
}
