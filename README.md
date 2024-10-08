# A few quines in Cairo

## What is a quine?
A [quine](https://en.wikipedia.org/wiki/Quine_(computing)) is a computer program that takes no input and produces a copy of its own source code as its only output. 

## Usage
### Quine check
```bash
$ scarb run isquine src/your_quine.cairo
"It's a quine of 434 chars!"
```


## Leaderboard
| quine file name      | size (chars)|
|:---------------      |------------:|
| formatted_quine.cairo| 676 |
| small_quine.cairo    | 434 |
| smaller_quine.cairo  | 326 |

## What else?
A few other programs that might exists yet are insanely hard to create.

 - Create the **smallest** Cairo quine
 - Create a quine in Cairo Zero (that is not the empty file)
 - Create a Cairo program that outputs its own Sierra
 - Create a Sierra quine
 - Create a CASM quine
 - Create a Cairo program that outputs its own STARK proof