# DSB-MTN-Git-Starter

Github Starter for the Montenegro DS Group!
Welcome to your first Data Science Bootcamp repository.

# Command Line, Git, and VS Code

This small project will help you practise how to:

- Navigate folders using the command line
- Clone a GitHub repository
- Open a project folder in Visual Studio Code
- Run a Python script
- Run a Jupyter notebook
- Edit a SQL file
- Track changes with Git
- Commit and push your work to GitHub

> **You do not need to memorise every command today.**  
> Concentrate on understanding where your files are and what each Git command does.

---

## Repository contents

| File             | Purpose                                            | Where it runs                     |
| ---------------- | -------------------------------------------------- | --------------------------------- |
| `hello.py`       | A small Python program                             | Python on your computer           |
| `analysis.ipynb` | A Jupyter notebook with Markdown, code, and output | VS Code, Jupyter, or Google Colab |
| `Question.SQL`   | A SQL query                                        | Google BigQuery                   |
| `README.md`      | Instructions and project documentation             | Displayed by GitHub and VS Code   |

Git records changes to these files, but Git does not run them.

---

## The workflow

During this exercise, you will follow this path:

```text
GitHub repository
       |
       | git clone
       v
Local repository on your computer
       |
       | edit and run files in VS Code
       v
Working directory
       |
       | git add
       v
Staging area
       |
       | git commit
       v
Local Git history
       |
       | git push
       v
GitHub repository
```

The four commands to remember are:

```bash
git status
git add .
git commit -m "Describe the change"
git push
```

Use `git status` whenever you are unsure what Git sees.

---

## Getting started

### 1. Open a terminal

Use:

- **macOS:** Terminal or the VS Code integrated terminal
- **Windows:** Git Bash or Git Bash inside VS Code

### 2. Create a course folder

```bash
cd ~/Desktop
mkdir ga-course
cd ga-course
```

### 3. Clone your repository

Replace `YOUR_REPOSITORY_URL` with the URL of the GitHub repository.

```bash
git clone YOUR_REPOSITORY_URL # https://github.com/Danilop88/DSB-MTN-Git-Starter
```

Move into the cloned repository:

```bash
cd DSB-MTN-GIT-Starter

```

Check your location and files:

```bash
pwd
ls
git status
```

### 4. Open the project in VS Code

```bash
code .
```

If `code .` does not work, open VS Code and select:

**File → Open Folder**

Then choose the cloned `unit01-starter` folder.

---

## Run the Python script

Open `hello.py` in VS Code.

You can use the **Run Python File** button or run it from the terminal.

### macOS

```bash
python3 hello.py
```

### Windows

```bash
python hello.py
```

If that does not work on Windows, try:

```bash
py hello.py
```

Expected output:

```text
Hello, Data Science Team!
```

### Your change

Change the team name in `hello.py`:

```python
name = "Your Team Name"
```

Save and run the file again.

---

## Run the notebook

Open `analysis.ipynb` in VS Code.

1. Click **Select Kernel**.
2. Select the Python environment provided for the course.
3. Run the first cell.
4. Run each remaining cell using `Shift+Enter`.
5. Read the output.

### Your change

Add a new Markdown cell containing:

```markdown
## My observation

The notebook contains executable code, explanatory text, and saved output.
```

Then add a Python code cell:

```python
student_name = "Your Name"
print(f"Notebook completed by {student_name}")
```

Run the cell and save the notebook.

> Running a notebook changes its output, but it does not automatically create a Git commit.

---

## Examine the SQL file

Open `Question.SQL` in VS Code.

The file contains SQL text that can be submitted to Google BigQuery.

Add this comment at the top:

```sql
-- Count penguins by species
```

When BigQuery access is available:

1. Open Google BigQuery.
2. Copy the query from `Question.SQL`.
3. Paste it into the BigQuery query editor.
4. Run the query.
5. Inspect the results.

> Git stores the SQL file. BigQuery executes the query and accesses the data.

---

## Check your changes

Return to the VS Code terminal:

```bash
git status
```

You should see modified files such as:

```text
modified: hello.py
modified: analysis.ipynb
modified: Question.SQL
```

Inspect your changes in the VS Code **Source Control** view.

---

## Stage your changes

Stage the three exercise files:

```bash
git add hello.py analysis.ipynb Question.SQL
```

Check the result:

```bash
git status
```

The files should now appear under **Changes to be committed**.

---

## Create a commit

Record a local checkpoint:

```bash
git commit -m "Complete Unit 01 starter exercises"
```

A useful commit message briefly explains what changed.

Good examples:

```text
Personalise Python greeting
Add notebook observation
Document penguin SQL query
Complete Unit 01 exercises
```

Avoid vague messages such as:

```text
stuff
changes
update
final version
```

---

## Push to GitHub

Publish your local commit:

```bash
git push
```

Then open your repository on GitHub and confirm that:

- Your new commit is visible
- `hello.py` contains your team name
- `analysis.ipynb` contains your new cells
- `Question.SQL` contains your comment
- This README is displayed on the repository page

---

## Optional Colab exercise

Open `analysis.ipynb` from GitHub in Google Colab.

1. Run the notebook.
2. Change the student name.
3. Select **File → Save a copy in GitHub**.
4. Choose your repository.
5. Enter a meaningful commit message.
6. Save the notebook.
7. Return to your local VS Code terminal.

Bring the remote change onto your computer:

```bash
git pull
```

Open the notebook in VS Code and confirm that the Colab change is present.

---

## Important safety rule

Never commit passwords, access tokens, private keys, or credentials.

Files such as these should not be added to Git:

```text
.env
credentials.json
service-account-key.json
```

If you see a credential in `git status`, stop and ask before committing.

---

## Command reference

| Command                   | Meaning                                        |
| ------------------------- | ---------------------------------------------- |
| `pwd`                     | Show the current folder                        |
| `ls`                      | List files and folders                         |
| `cd folder-name`          | Move into a folder                             |
| `cd ..`                   | Move up one folder                             |
| `mkdir folder-name`       | Create a folder                                |
| `git clone URL`           | Copy a remote repository to your computer      |
| `git status`              | Show what Git currently sees                   |
| `git add FILE`            | Stage a selected file                          |
| `git commit -m "message"` | Record a local checkpoint                      |
| `git push`                | Send local commits to GitHub                   |
| `git pull`                | Bring remote commits into the local repository |

---

## Check your understanding

Before finishing, explain these distinctions to your partner:

1. What is the difference between **saving** and **committing**?
2. What is the difference between **forking** and **cloning**?
3. What is the difference between **committing** and **pushing**?
4. What runs a `.py` file?
5. What runs the code cells in an `.ipynb` notebook?
6. What executes the query stored in a `.sql` file?
7. Where should passwords and credentials be stored?

---

## Completion checklist

- [ ] I cloned the repository
- [ ] I opened the repository folder in VS Code
- [ ] I ran `hello.py`
- [ ] I changed the Python greeting
- [ ] I selected a notebook kernel
- [ ] I ran and changed `analysis.ipynb`
- [ ] I examined and changed `Question.SQL`
- [ ] I used `git status`
- [ ] I staged selected files
- [ ] I created a meaningful commit
- [ ] I pushed my commit
- [ ] I verified the result on GitHub

---

## Getting help

If something does not work:

1. Read the complete error message.
2. Run `pwd` to check your location.
3. Run `ls` to check the available files.
4. Run `git status` to check the repository.
5. Compare your command carefully with the instructions.
6. Ask your partner to explain what they see.
7. Ask an instructor or teaching assistant.

When asking for help, share:

- The command you entered
- The complete error message
- The output of `pwd`
- The output of `git status`

---

## Final thought

> Saving changes your file.  
> Staging selects changes for a checkpoint.  
> Committing records the checkpoint locally.  
> Pushing publishes the commit to GitHub.

Welcome to version-controlled data science!
