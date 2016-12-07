# Database Of Hacked Accounts
Nowadays, people cheat a lot in Minecraft. Because of they want to play more and more,
cheat more and more, websites like MCLeaks provide Minecraft account for free. This is
a problem because it's means that a cheater can reconnect indefinitely to a (maybe your?)
server and continue to cheat. Even if these services are totally legal because they run
with thousands of accounts given by their owner. The question is, do we need to
tolerate this and accept these players to play, or do we have to ban them to prevent
the cheaters to come?

## How to use?

We are providing you a RESTful API who simply take an UUID and respond you if this
UUID exists in the database or not.

```
https://doha.blueslime.fr/api/check/<UUID>
```

For example,

```
https://doha.blueslime.fr/api/check/29b2b527-1b59-45df-b7b0-d5ab20d8731a
```

respond,

```
{
  "exists": "false"
}
```


## Contributing

This is a public database and even if we are working on a bot to automatically fill
this database, it will be faster if you help us!

Go to [MCLeaks website](https://mcleaks.net/get) and redeem an ALT-Token. After, simply
send a request to:

```
https://doha.blueslime.fr/api/ban/<ALT-TOKEN>
```

If the token is still valid, the account will be added to the database and be blacklisted
immediately (it can take 1 hour to update this repository - crontab yee).
