# Intelligent Human Computer Interaction Game
Human Computer Interaction Game by using OpenCV and Processing.

<p align="center">
  <img src="https://user-images.githubusercontent.com/22610163/29653050-ee737c04-88b0-11e7-8b3e-3404b592732c.gif">
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/22610163/29589421-e895550a-879d-11e7-9e3f-b04546cd9ece.png">
</p>

*A human–machine interface usually involves peripheral hardware for the INPUT and for the OUTPUT. Often, there is an additional component implemented in software, like e.g. a graphical user interface.*

## Introduction

- **The Game Scenario:** The game character's (Super Mario's) velocity depends on the speed and direction someone's fist or palm (as user's choise) movements by using the computer's front-facing web camera. The 'stage' is just a 2D platform, with random holes on the ground and random clouds on sky. There is a timer upon game start, and that timer stops when the character collide to one of those holes or clouds (game end). A button resets the game stage. 

- **The Main Aim of The Game:** The main aim of this proof-of concept game is that incentivizing the users to move/sport for keeping them healthy while they are having fun by playing a human - computer interaction game.

    - *Games for human health, wellbeing, and fitness:* I have recently begun to focus on making sports, physiological exercise, health, and wellbeing applications more playful, especially in light of the recent increase in sensor use and the quantified self movement.

## Theory

**1. Front-End**

The 'stage' is just a 2D platform, with random holes on the ground and random clouds on sky and it was created by using Processing 3.0 with the images that are available in [data folder](https://github.com/ahmetozlu/intelligent-human-computer-interaction-game/tree/master/src/mario/data).

**2. Back-End**

[Haar-Cascade Classifier](http://docs.opencv.org/2.4/modules/objdetect/doc/cascade_classification.html) was used for fist and palm detection. The trained Haar-Cascade Classifier XML files are available in [here](https://github.com/ahmetozlu/intelligent-human-computer-interaction-game/tree/master/src/mario).


## Project Demo
- The demo video of this project is available on YouTube: https://www.youtube.com/watch?v=HpzLbTf2OQk

## Installation
**Dependencies:**

It is developed with "[Processing 3.0](https://processing.org/download/)" and it requires these library;

1. Video | GStreamer-based video library for Processing

2. OpenCV for Processing | Computer Vision with OpenCV for Processing

These libraries can be added on Processing 3.0 IDE --- follow this path: "*Tools-> Add Tool->Libraries*" 
    
**How to build and run this source?**

1. Clone repository to your local and import project into Processing 3.0 IDE

2. Install the dependencies which are given at above

3. Build and run the project

## Citation
If you use this code for your publications, please cite it as:

    @ONLINE{vdtc,
        author = "Ahmet Özlü",
        title  = "Intelligent Human Computer Interaction Game",
        year   = "2017",
        url    = "https://github.com/ahmetozlu/human_computer_interaction"
    }

## Author
Ahmet Özlü

## License
This system is available under the MIT license. See the LICENSE file for more info.
