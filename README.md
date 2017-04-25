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


## Do you think that you will break my server?

If you are a -big- Minecraft server and you think that you will make easily 100k requests a day, this section is
for you!

In your case, it's maybe easier for you, and more friendly for my server, to cache locally the database (located
in the [db.json](db.json) file). Don't forget to refresh your cache from time to time to get the new players from
the list.

Feel free to contact me if you have any questions about how to create this cache.


## Contributing

This is a public database, and even if we are working on a bot to automatically fill
this database, it will be faster if you help us!

Go to [the MCLeaks website](https://mcleaks.net/get) and redeem an ALT-Token. After, send a request to:
```
https://doha.blueslime.fr/api/ban/<ALT-TOKEN>
```

If the token is still valid, the account will be added to the database and be blacklisted
immediately (it can take 1 hour to update this repository—crontab yee).

Also, we created a Google Chrome extension to help us and it's works very well! All the explainations
on the [Google Chrome Web Store](https://chrome.google.com/webstore/detail/pkpmimofidjihldcbiglijhbdfiminob).


## Author

Jérémy L. (IamBlueSlime) - [Website](https://blueslime.fr) - [Twitter](https://twitter.com/iamblueslime)