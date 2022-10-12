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
p = pyenv;
```
  
% Call python with the *py* prefix
```matlab
% Firstly, verify Python configuration
p = pyenv;
```
  
% Run Python statements with  [*pyrun*](https://www.mathworks.com/help/matlab/ref/pyrun.html) function
```matlab
% Firstly, verify Python configuration
p = pyenv;
```
  
% Run Python file with [pyrunfile](https://www.mathworks.com/help/matlab/ref/pyrunfile.html) function
```matlab
% Firstly, verify Python configuration
p = pyenv;
```


### 2_Pass_MATLAB_Data_To_Python_And_Back.mlx
This example shows how to pass data - structures, table, timetable - between MATLAB & Python.
```matlab
strMATLAB = "text"
strPython = py.str(strMATLAB)
```



b. MATLAB

## :information_source: Helpful resources
- [Enterprise Deployment with MATLAB Production Server](https://www.mathworks.com/help/compiler_sdk/mps.html?s_tid=CRUX_lftnav) 
- [FastAPI](https://fastapi.tiangolo.com/) 
- [Uvicorn](https://www.uvicorn.org/)
