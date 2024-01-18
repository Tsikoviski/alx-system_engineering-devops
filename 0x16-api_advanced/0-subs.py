#!/usr/bin/python3
"""
queries the Reddit API and returns the number of subscribers
"""
import requests


def number_of_subscribers(subreddit):
    """
    Fundtion queries reddit API
    Returns subscribe number if valid
    else 0
    """

    username = 'ledbag123'
    password = 'Reddit72'
    user_pass_dict = {'user': username, 'passwd': password, 'api_type': 'json'}

    headers = {'user-agent': '/u/ledbag123 API Python for Holberton School'}
    url = 'https://www.reddit.com/r/{}/about.json'.format(subreddit)
    client = requests.session()
    client.headers = headers

    req = client.get(url, allow_redirects=False)
    if req.status_code == 200:
        return req.json().get("data").get("subscribers")
    else:
        return 0
