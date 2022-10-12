# MATLAB and Python 
These are simple examples to see the integration of Python in MATLAB (and vice versa).

![](https://github.com/bamby1313/MATLAB_and_Python/blob/main/matlabpython.jpeg)

## :link: Prerequisites
To run this project, you need:  
- MATLAB
- Python
- MATLAB Compiler SDK for the example 4 *Generate Python library*
- Init the [from_matlab_to_python_and_back](https://github.com/bamby1313/from_matlab_to_python_and_back) submodule  
  
Note that depending on your MATLAB version, [this link](https://www.mathworks.com/content/dam/mathworks/mathworks-dot-com/support/sysreq/files/python-compatibility.pdf) lists to the supported Python versions.


## :page_with_curl: Plan  
- Call Python from MATLAB and back  
- Pass MATLAB to Python and back  
- Call Python class  
- Generate Python library  


## :notebook: Usage  

### 1_Call_Python_From_MATLAB.mlx  
This example shows how to call python code or file through 3 approaches
```matlab
% Firstly, verify Python configuration
p = pyenv

% Call python with the *py* prefix
py.list({'Name1','Name2','Name3'})
 
% Run Python statements with  [*pyrun*](https://www.mathworks.com/help/matlab/ref/pyrun.html) function
pyrun("a = b*c", b = 5, c = 10)

% Run Python file with [pyrunfile](https://www.mathworks.com/help/matlab/ref/pyrunfile.html) function
pyrunfile("hello.py")
```


### 2_Pass_MATLAB_Data_To_Python_And_Back.mlx
This example shows how to pass data - structures, table, timetable - between MATLAB & Python.
```matlab
strMATLAB = "text"
strPython = py.str(strMATLAB)
```
> strPython =   
>  Python str with no properties.  
>  text



### 3_Call_Python_class
This example shows how to call and pass classes between MATLAB & Python.
```python
class Person:
  def __init__(self, name, age):
    self.name = name
    self.age = age
```
```matlab
classdef Person
    properties
        name
        age
    end
    methods
        function obj = Person(name, age)
            %UNTITLED3 Construct an instance of this class
            %   Detailed explanation goes here
            obj.name = name;
            obj.age  = age;
        end
    end
end
```

### 4_Generate_Python_Library
This example shows how to generate a Python library from a MATLAB function.  
Please note that MATLAB Compiler SDK is needed.  
```matlab
buildResults = compiler.build.pythonPackage
```

## :information_source: Helpful resources
- [Using MATLAB with python](https://www.mathworks.com/products/matlab/matlab-and-python.html) 
- [Cheat Sheets MATLAB and Python](https://www.mathworks.com/campaigns/offers/matlab-python-cheat-sheets.html) 
