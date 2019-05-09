# README

## Setup
* Install [Ruby] >= 2.3
* Install [Rails] >= 5.1
* Make sure Bundler installed. If not, run ```$ gem install bundler```.
* Run ```$ bundle install``` to install all dependencies
* Run ```$ rake db:create db:migrate``` to create the database, run all migrations.
* To start the Rails Server, run ```$ rails s```.

## Testing APIs and API Documentation
* _Optional_: To run all RSpec tests, type ```$ rspec```. 

* The api documentation is contained in the api_documentation.docx file in the root folder

### Setting up a Game
* To start a game, call this endpoint with a POST request <br/> **POST** ```localhost:3000/api/v1/games?created_by={Creator Name}```. This will create a new game  <br/>
* To create the first player, call this endpoint with a POST request **POST** ```localhost:3000/api/v1/games/1/players?name={Player Name}```. <br/>
* To create the second player, call this endpoint with a POST request **POST** ```localhost:3000/api/v1/games/1/players?name={Player Name}```. 

### Displaying the Scoreboard
* To display the entire scoreboard, call this endpoint with a GET request **GET** ```localhost:3000/api/v1/games/{game_id}```. This displays the entire scoreboard including players, frames and scores.

### Inserting Data (Frame scores)
* We do this by calling this endpoint with a POST request, passing necessary scores. **POST** ```localhost:3000/api/v1/games/{game_id}/players/{player_id}/frames?ball_one_pins={score_1}&ball_two_pins={score_2}```

* Repeat the process for subsequent frames.
* At the 10th frame, the game ends. The bowling API won't allow more than 10 frames.

* Please see the ``api_documentation.docx`` in the application root directory for full api details.
