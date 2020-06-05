#Sqitch - Migrations


#Sqitch - Docs
> https://sqitch.org/docs/manual/
>
> https://sqitch.org/docs/manual/sqitchtutorial-mysql/
>
> https://github.com/sqitchers/sqitch/blob/develop/lib/sqitchtutorial-mysql.pod
>
> https://metacpan.org/release/App-Sqitch
>
> https://www.youtube.com/watch?v=LYevw5cYozw&t=951s
>
> https://www.youtube.com/watch?v=XWotnAQKr5U


#Environments:

* dev
* tests 
* hml
* sandbox
* prod

#Workflow
<b>Deploy</b>
1) create .sql on deploy path
2) create the same .sql with revert scripts and put on revert path
2) commit and push (git) your changes on 
 
# DEV ENVIRONMENT

#Deploy all features in deploy path
To add new features, run:
```
docker-compose -f docker-compose.dev.yaml run database-migration-deploy
```

#Revert all features in revert path
To remove all features, run:
```
docker-compose -f docker-compose.dev.yaml run database-migration-revert
```

## For new migrations
```
 docker-compose -f docker-compose.dev.yaml run database-migration-deploy sqitch add {your_feature} -n "all tables"
 docker-compose -f docker-compose.dev.yaml run database-migration-deploy sqitch deploy
 docker-compose -f docker-compose.dev.yaml run database-migration-deploy sqitch status
```
