
# Movie Recommendation System  

## Project Overview  
This **AI/ML Mini Project** implements an **expert system** using **Prolog** to recommend movies based on user preferences. The system asks questions about movie attributes and, based on responses, suggests the most suitable movie.  

## Features  
✔ Uses **Prolog** for knowledge-based reasoning.  
✔ Asks questions to identify user preferences.  
✔ Recommends a movie based on attributes like **genre, theme, and characters**.  
✔ Includes a **knowledge base** with predefined movie rules.  
✔ Uses **dynamic facts** to store user responses.  

## How It Works  
1. The system starts with the `go` predicate:  
   ```prolog
   go :- hypothesize(Movie),
   write('I guess that movie is '),
   write(Movie), nl, undo.
   ```
2. It asks questions about movie attributes using the `verify/1` function.  
3. Based on responses, it matches the most suitable movie.  
4. The **knowledge base** contains classification rules for different movie categories.  
5. The system suggests a **Bollywood movie** as output.  

## Movie Categories  
- **Sports Movies**: *Chak De India, MS Dhoni, Eighty Three*  
- **Comedy Movies**: *Golmaal, Hum Aapke Hai Kaun, Hum Sath Sath Hai*  
- **Friendship-Based**: *Zindagi Na Milegi Dobara, Student of the Year, Three Idiots*  
- **Dance-Related**: *Happy New Year*  

## Running the System  
1. Install **SWI-Prolog** (if not installed).  
2. Load the Prolog file into SWI-Prolog.  
3. Run the command:  
   ```prolog
   ?- go.
   ```
4. Answer the questions to receive a movie recommendation.  

## Technologies Used  
- **Programming Language**: Prolog  
- **Development Environment**: SWI-Prolog  

## Notes  
- The system only includes **Bollywood movies** for recommendation.  
- User responses are **yes/no** based.  
- The expert system can be expanded by adding more rules and movies.  
