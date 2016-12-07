# Database Of Hacked Accounts

Nowadays, people cheat a lot in Minecraft. As they want to play more and cheat even more, websites
like MCLeaks provides Minecraft accounts for free. This is a problem: it means a cheater is able to
reconnect indefinitely to a server—maybe your own!—and continue to cheat. Even if these services are
totally legal because they run with thousands of accounts given by their respective owners, the question
is, should we tolerate this and accept these players, or do we have to ban them to protect ourselves
against the cheaters using these services?


## How to use?

We provide a RESTful API, taking an UUID and answering if this UUID exists in the database or not.

```
https://doha.blueslime.fr/api/check/<UUID>
```

As example,

```
https://doha.blueslime.fr/api/check/29b2b527-1b59-45df-b7b0-d5ab20d8731a
```

answers,

```
{
  "exists": "false"
}
```


## Contributing

This is a public database, and even if we are working on a bot to automatically fill
this database, it will be faster if you help us!

Go to [the MCLeaks website](https://mcleaks.net/get) and redeem an ALT-Token. After, send a request to:
```
https://doha.blueslime.fr/api/ban/<ALT-TOKEN>
```

If the token is still valid, the account will be added to the database and be blacklisted
immediately (it can take 1 hour to update this repository—crontab yee).
