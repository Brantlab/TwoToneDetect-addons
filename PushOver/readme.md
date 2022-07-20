## My pushover powershell commands

I have setup twotonedetect to upload to a webserver that is running to host the audio connections. The alerts come in looking like. 

![Dispatch.jpg](pushover/img/dispatch.jpg)

Upon launching the notice I have mine configured to automatically launch the audio.

To set this up 
1. Move the pushover.ps1 file into same directory as TTD is running from
2. Go to tone you would like to configure
3. Select Post Email Command
4. Put this in there`powershell "C:\TwoToneDetect73g\pushover.ps1" -Des "[d]" -Time [t] -mp3 [mp3]`
Just as a note you may need to update the file path. 
5. make sure you modify the script for your app token and user token ( or group token)

### Some ideas
If you don't want to send audio you can modify the script to remove the audio link. 