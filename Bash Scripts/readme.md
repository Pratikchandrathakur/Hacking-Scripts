# Cronjobs for Scheduling tasks.
## Warning: before you start look at no.6 point carefully.
1. Use the command below to check crontabs active or inactive for users.

```
crontab -l
```
2. Use this command to edit the crontab for specific user.
```
crontab -e
```
3. Select your favorite editor
4. Now, crontab config file will open up in your favorite editor
5. Add this configuration to that file at the last of the file where comments end:
```
30 7 * * *  * echo "hello world"
```
6. It is not a good practice to use cronjobs as a regular users, so it would be better if we run it as a root as root should only have permissions to run backups script once a day.
7. Let's use crontab for root user as:
```
sudo crontab -u root -e
```
8. Add this configuration to that file at the last of the file where comments end:
```
2 14 * * *  * /opt/./backup.sh
```
9. Now, Save the changes and exit from the editor.
10. Wait for the time to see if backup really happens or not or adjust this time really close to your current time to see the backup quickly.
11. Now, Your Automated Backup is complete.
12. Congrats, Your are taking the backup of /Confidential file to /Backup/$date/ daily one a day, everyday of month at 14:2 time.
13. Now check system log:
```
sudo cat /var/log/syslog
```
14. Confirmed if it ran or not.

