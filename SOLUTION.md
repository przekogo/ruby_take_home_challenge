## Next steps and suggestions for improvements
* Real-time updating using etherscan's API looks like a strong candidate for bottlenecking even with caching implemented on API calls. Extending cache durations or delayed jobs using cron or similar solution for keeping the local data up to date is reccomended. Add option for users to manually update if needed.
* Keeping more data in the app's database would further help with performance and make the app less dependant on constant external API availability.
* In current scenario of loading data from API live implementing asynchronous requests on the front side (i.e. ajax) seems borderline mandatory for responsivness and user experience.
* Improving code coverage should also be a topmost priority especially in early stages of the project
* Better understanding of crypto currency tech would help with code cleanliness (i.e. get rid of hard-coded multiplier)
