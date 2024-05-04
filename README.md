
# W10D1 - Bash Scripting

## Assignment Objectives:

#### 1) Bash Scripting Practice:

   - Write Bash scripts to perform basic tasks such as user interaction, variable handling, and output formatting.

   - Practice using common Bash commands and syntax elements.

   - Gain familiarity with script execution and output redirection.

#### 2) Automation Task:

   - Identify repetitive tasks in your workflow that can be automated using Bash scripting.

   - Design and implement Bash scripts to automate identified tasks efficiently.

   - Test automation scripts to ensure they perform the desired tasks accurately and reliably.

   - Document the development process, including challenges faced and solutions implemented.


#### Part 1
The script to greet the user--based on a name input--and datetime display was intuitive and straightforward to implement. The ```echo``` command displays output to the terminal, and the ```read``` command is akin to the Python ```input()``` function or the ```prompt()``` method in Javascript. 

The assignment requested that each prompt and datetime display show separately, but I decided to merge the two into one echo.

#### part 2
Creating a task automation script was slightly more challenging. I wanted to write a script that would back up an entire directory into a backup directory, which would have practical benefits for reduncancy of data (in this case, class assignments and coding files). Initially, when researching how to define the ```SOURCE_DIR``` with a file directory outside of the C: drive, I learned to use:
```
SOURCE_DIR="/mnt/d/Flagship_24"
```
This would have been applicable if using WSL for scripting. I discovered that this step was not required.

The script from part one allowed me to make a timestamp variable for keeping track of each and all backup creations.

The ```-p``` flag in the line:
```
mkdir -p "$BACKUP_DIR"
```
ensured that an error did not occur if the backup directory already exists.

The ```-R``` flag in the line:
```
cp -R "$SOURCE_DIR" "$BACKUP_DIR"
```
ensured that the files within the source directory were copied recoursively.

I wanted to include an error check to determine if the copy request was successful. After some research, I determined that a conditional statement made the most sense:
```
if [ $? -eq 0 ]; then
    echo "backup successful: $BACKUP_PATH"
else 
    echo "Backup failed :( "
    exit 1

fi 
```
I had to learn the structure of the statement, like ending the if/then statement block with ```fi```. 
## Execution

To execute this code run

```
  bash part_1_script.sh

  bash part_2_automation.sh
```


## Authors

- [@Christian Toro](https://www.github.com/ChristianToro)


## Acknowledgements

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)

