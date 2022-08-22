# Test-Style-Build-Actions

This is a generic template repository to faciltate experimentation for best testing practices. To use simply drop your source code into ```src``` folder and your tests into ```tests``` folder. Push your repository and allow github actions to build and return pytest-flake-coverage results for versions of Python based on your OS of choice.

## [Pytest](https://docs.pytest.org/en/7.1.x/)

The pytest framework makes it easy to write small, readable tests, and can scale to support complex functional testing for applications and libraries.

## [Flake8](https://flake8.pycqa.org/en/latest/)

Tool for style guide enforcement

## [Coverage](https://coverage.readthedocs.io/en/6.4.1/)

Coverage.py is a tool for measuring code coverage of Python programs. It monitors your program, noting which parts of the code have been executed, then analyzes the source to identify code that could have been executed but was not.

Coverage measurement is typically used to gauge the effectiveness of tests. It can show which parts of your code are being exercised by tests, and which are not.

## [Radon](https://radon.readthedocs.io/en/latest/index.html)

Radon is a python tool which computes various code metrics such as those listed below:

### Cyclomatic Complexity

Cyclomatic Complexity corresponds to the number of decisions a block of code contains plus 1. This number (also called McCabe number) is equal to the number of linearly independent paths through the code. This number can be used as a guide when testing conditional logic in blocks.

### Maintainability Index

Maintainability Index is a software metric which measures how maintainable (easy to support and change) the source code is. The maintainability index is calculated as a factored formula consisting of SLOC (Source Lines Of Code), Cyclomatic Complexity and Halstead volume. It is used in several automated software metric tools, including the Microsoft Visual Studio 2010 development environment, which uses a shifted scale (0 to 100) derivative.

### Raw Metric

The following are the definitions employed by Radon:

1. LOC: The total number of lines of code. It does not necessarily correspond to the number of lines in the file.
2. LLOC: The number of logical lines of code. Every logical line of code contains exactly one statement.
3. SLOC: The number of source lines of code - not necessarily corresponding to the LLOC.
4. Comments: The number of comment lines. Multi-line strings are not counted as comment since, to the Python interpreter, they are just strings.
5. Multi: The number of lines which represent multi-line strings.
6. Blanks: The number of blank lines (or whitespace-only ones).

### Halstead Metric

Halstead’s goal was to identify measurable properties of software, and the relations between them. These numbers are statically computed from the source code.
