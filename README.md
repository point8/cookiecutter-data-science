# Cookiecutter Data Science

_A logical, reasonably standardized, but flexible project structure for doing and sharing data science work._


#### [Project homepage](http://drivendata.github.io/cookiecutter-data-science/)


### Requirements to use the cookiecutter template:
-----------
 - Python 2.7 or 3.5
 - [Cookiecutter Python package](http://cookiecutter.readthedocs.org/en/latest/installation.html) >= 1.4.0: This can be installed with pip by or conda depending on how you manage your Python packages:

``` bash
$ pip install cookiecutter
```

or

``` bash
$ conda config --add channels conda-forge
$ conda install cookiecutter
```


### To start a new project:
------------

From the directory, where you want to create a new folder for your project write

``` bash
$ cookiecutter https://github.com/point8/cookiecutter-data-science
```

to initialize your new project. You will be prompted to enter values for the settings of the template. The default value, which is set when you enter nothing, is always shown in `[ ]` behind the parameter. These settings are:

* **directory_name** [*new_project*]: Name of your project's directory
* **module_name** [entered *directory_name* + *_module*]: Name of your pip installable module
* **pip_install** [*yes*]: Whether to directly pip install the new project module. If chosen, the module is directly installed in development mode via ``pip install -e``
* **readme_header** [entered *directory_name*]: Name of your project in the README.md file.
* **readme_description** [*A short description of the project.*]: Description of your project in the README.md file.
* **author_name** [*Point 8 GmbH*]: Author referenced in the module
* **email** [*kontakt@point-8.de*]: Email referenced in the module
* **open_source_license** [*No license*]: Choose whether to have a license file and which

[![asciicast](https://asciinema.org/a/9bgl5qh17wlop4xyxu9n9wr02.png)](https://asciinema.org/a/9bgl5qh17wlop4xyxu9n9wr02)


### The resulting directory structure
------------

The directory structure of your new project looks like this: 

    {directory_name}
    ├── LICENSE
    ├── README.md
    ├── data
    │   ├── interim
    │   ├── processed
    │   └── raw
    ├── docs
    ├── figures
    ├── notebooks
    │   └── quickstart.ipynb
    ├── references
    ├── setup.py
    ├── {module_name}
    │   ├── __init__.py
    │   ├── analysis
    │   ├── data
    │   └── plot

* **data** can contain any data used in the project with three subdirectories for differnt purposes. All content is excluded in the project's `.gitignore` to not share any data with git.
    * **raw** should contain the raw, unprocessed data of the project
    * **interim** should cointain datasets, which are created in steps during the preprocessing
    * **processed** should contain the final processed datasets, on which actual analysis tasks are performed
* **docs** should contain anything for the documentation of the project
* **figures** should contain any sort of results like plots or reports of the project's analysis
* **references** should contain any additional information relevant to the project
* **{module_name}/analysis** should contain code for analysis on the processed data
* **{module_name}/data** should contain code for processing data for the project
* **{module_name}/plot** should contain code for visualization of the project's analyses

## Contributing

We welcome contributions! [See the docs for guidelines](https://drivendata.github.io/cookiecutter-data-science/#contributing).

### Installing development requirements
------------

    pip install -r requirements.txt

### Running the tests
------------

    py.test tests
