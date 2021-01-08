# Virtual Arcade

The Virtual Arcade is a 2d graphical rendering of an arcade experience where a player can create an account move an avatar around an arcade and enteract with the games present choosing to play them if they have the coins. 

## Technologies Used

Javascript
HTML
CSS
Ruby v~2.6.1

## Setting up 

After forking and cloning the front end found [here](https://github.com/Allen70/VirtualArcade-Frontend/tree/master) a user should go into the file and run the following commands.
```
bundle

rails db:migrate

rails s
```
Once that's done this repo should be forked and cloned and hosted on a browser. *Note the default configurations of rails server and some browser hosting servers default to the same location http://localhost:3000/ if you use custom configuration either your configuration or this repo will need to adapt.

And that's it have fun playing at this arcade!

### Arcade Controls and Interactions

Moving the avatar around the screen is controlled with the arrow keys and interacting with objects is controlled with the enter key. In it's current form some buttons have to be clicked, this is planned to be phased out later. 

### Only one game?

For now I've only just begun coding the first game as time goes on and I continue to revisit this project the library of games should grow. The first game is going to be a bit of a choose your own adventure/rpg novel. I'm excited to see where it goes. Right now it's functionality is limited to an opening cut-scene and a menu that you can exit from, which puts you back in control of your avatar where you left it in the arcade. 

## What I learned

I like writing functional stuff rather than making something look pretty. I have some eye to styling, but by and large that's not where my passion is. I also learned about the application of classes to create rules for interactions. Being able to abstract those ideas out and work with a nodelist for the first time was a lot of fun. Relatedly my favorite bit of code in this project so far is 
```
var objectArray = []

nopassingElement.forEach( object => {
    let left = object.offsetLeft 
    let right = (left + object.clientWidth)
    let top = object.offsetTop
    let bottom = (top + object.clientHeight)
    let game = object.classList[0]
    

        let solidObject = {
        left: left, 
        right: right,
        top: top, 
        bottom: bottom,
        game: game
    }
    objectArray.push(solidObject)
})
```
I know it doesn't look like much, but I'm very proud of it. A blog post about what went into this code snippit will be coming soon.
