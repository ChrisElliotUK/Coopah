# coopah clone

Credits: [coopah.com](https://coopah.com)

The app uses Bloc state management and features are split into data, domain and presentation (as per clean architecture). 

It pulls in some dummy json data that I created to roughly match the data in the training screen.

The video player is handled by a bloc to demonstrate a bloc but I would probably use a cubit in normal circumstances.

It uses theming rather than constant colors so dark mode will work nicely on your screen and I have included a bloc that would allow the user to set light or dark mode but I have not yet implemented the caching aspect as I have not done a profile screen. Dark mode will work if you put your phone in dark mode. 
