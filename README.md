# omori-upscale-bot-v2
Source code for the OMORI Upscale Bot implemented in Nim using the [X.nim package](https://github.com/aspiring-aster/x.nim).

### Use
- Install X.nim by following the guide to install it. [Found Here](https://github.com/aspiring-aster/x.nim)
- Make a [Twitter developer](https://developer.twitter.com/en) account.
  - Make sure that the tokens for the account have write access  
- Input your keys within upscale_bot.nim
- Run ```nim c -r -d:release upscale_bot.nim``` to compile the code
- Run the code with ```./upscale_bot```

### Functions 
- Tweet with media


### Deployment methods: 
- 1) Use a [AWS](https://aws.amazon.com/) server to host the bot and run the ```upscale_bot``` every hour. One such way is to use a cronjob that runs at the start of every hour.
    - I'm using my own server for this instead of AWS

### Example 
- [Check out the bot here!](https://twitter.com/omoriupscalebot)


### READ THIS IF YOU WANT TO UPSCALE YOURSELF
This isn't what I use to upscale the images. This is how I manage the bot. 
I followed [this guide](https://upscale.wiki/wiki/Installing_ESRGAN_and/or_BasicSR_on_Arch_Linux) to get started and through trial and error I developed my own system for upscales built off of this.
