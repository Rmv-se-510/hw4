<h2 align="center">
    Data Wrangling
</h2>

<br>

<div align="center">
        <img width="800" height="400" src="https://drive.google.com/file/d/1opR4s2bP49oyb3_NyCctykcWAcR5iivU/view?usp=sharing" alt="Data Wrangling">
</div>

<br>

<div align="center">


[![License](https://img.shields.io/badge/License-MIT-purple.svg?style=flat)](https://github.com/Rmv-se-510/hw4/main/LICENSE)
[![Collaborators](https://img.shields.io/badge/Collaborators-3-orange.svg?style=flat)](https://github.com/Rmv-se-510/hw4/graphs/contributors)
[![Language](https://img.shields.io/badge/Language-Python-blue.svg?style=flat)](https://github.com/Rmv-se-510/hw4/search?l=shell)
[![Open Issues](https://img.shields.io/github/issues/Rmv-se-510/hw4)](https://github.com/Rmv-se-510/hw4/issues)
[![GitHub Repo Size](https://img.shields.io/github/repo-size/Rmv-se-510/hw4.svg)](https://img.shields.io/github/repo-size/Rmv-se-510/hw4.svg)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

</div>


### Introduction

Data wrangling, also referred to as data munging, is the essential process of cleaning, transforming, and organizing raw data into a usable format for analysis and reporting. Raw data is often messy, incomplete, or unstructured, making it difficult to extract meaningful insights without proper preparation. Data wrangling allows us to systematically break down complex data processing tasks into smaller, manageable subtasks, enabling us to derive meaningful information.

<b>Pipes</b>

Pipes are a fundamental mechanism for inter-process communication in operating systems, allowing the output of one process to serve as the input for another. In the terminal, the pipe command (represented by the | symbol) enables you to connect commands, creating an efficient workflow. For example, running the command ls | wc -l counts the number of files in the current directory by passing the output of ls to wc -l.

By utilizing pipes, we can build powerful data pipelines that transform raw data through a series of commands. This tutorial will guide you through creating a data pipeline using various shell commands, including grep, sed, and awk, to filter, sort, and manipulate data effectively.

<b>Key Commands</b>

```grep```: A command-line tool for searching plain-text data for lines that match a regular expression. It is highly useful for filtering output based on specific criteria.

```sed```: A stream editor used for parsing and transforming text in a pipeline. Common operations include substitution, deletion, and text manipulation.

```gawk```: A powerful text-processing language that enables pattern scanning and processing, making it ideal for extracting and manipulating data.


### Installation and Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/Rmv-se-510/hw4.git
   ```

2. Change to the repository directory:
   ```bash
   cd hw4
   ```

3. For Windows based OS use WSL. you can install WSL using the following command.
    ```powershell
    wsl --install
    ```

4. For windows based OS, change the end of line of sequence to LF
    ```vs editor
    . Ctrl + Shift + p
    > Type 'Change End of Line Sequence'
    > Select LF
    ```


4. You can run the scripts using the following commands
   ```bash
   bash task1.sh
   ```

   ```bash
   bash task2.sh
   ```

   ```bash
   bash task3.sh
   ```
   

---

## Authors and Contributors

- **Meet Vora**  
  Email: [mvora2@ncsu.edu](mailto:mvora2@ncsu.edu)

- **Raj Patel**  
  Email: [rbpatel4@ncsu.edu](mailto:rbpatel4@ncsu.edu)

- **Vihar Shah**  
  Email: [vshah23@ncsu.edu](mailto:vshah23@ncsu.edu)

---
## Contributions

We welcome contributions from the community! If you would like to contribute to this project to optimize the algorithm, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b ST-XYZ`). XYZ denotes the number E.g. ST-001
3. Make your changes and commit them (`git commit -m 'ST-XYZ: Add new feature'`).
4. Push to the branch (`git push origin ST-XYZ`).
5. Open a Pull Request.

For major changes, please open an issue first to discuss what you would like to change. Ensure all tests pass before submitting your pull request.
