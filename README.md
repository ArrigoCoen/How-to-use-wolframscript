# How-to-use-wolframscript

First, I can't use wolframscript at the terminal, since I get the message
 
![Test Image 1](Fig_error.png)

So.... lets fix this!

## Dowload Wolframscript

Go to the page:
[https://reference.wolfram.com/language/workflow/InstallWolframScript.html](https://reference.wolfram.com/language/workflow/InstallWolframScript.html)

Examples of how to use wolframscript 
[https://reference.wolfram.com/language/ref/program/wolframscript.html](https://reference.wolfram.com/language/ref/program/wolframscript.html)

An example of wolframscript on terminal
>>> wolframscript -code 2+2



wolframscript -script test.m
math -script test.m



This option do somethin
>>> cd "/Users/arrigocoen/Dropbox/1 How to/How-to-use-wolframscript"
>>> wolframscript -script test.m

If i run 
>>> wolframscript -script test.m &> out_test.txt; 
I get a txt with the message of the error,
even if I add the line 
$Pre = Quiet
to the .nb file 

Remember that you need to initialize the cell and to save the file as .m (use save as for this last part)

wolframscript -script test2.m &> out_test.txt; 

wolframscript -file test2.wls



wolframscript -script test4.wls > out_test4.txt



Copiando archivos de local al cluster

cd "/Users/arrigocoen/Dropbox/1 How to/How-to-use-wolframscript"

scp test4.wls acoencoria@solislemus-001.discovery.wisc.edu:/mnt/dv/wid/projects1/SolisLemus-ArrigoCC/

/Users/arrigocoen/Dropbox/1 How to/How-to-use-wolframscript


% More about of copy the output in https://askubuntu.com/questions/420981/how-do-i-save-terminal-output-to-a-file





