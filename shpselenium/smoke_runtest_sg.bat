#batch file to execute testcases locally


echo off 
set currentdate=%date: =_%
set currentdate=%currentdate:/=-%
Set currenttime=%Time::=-%
Set currenttime=%currenttime:.=-%

echo on

python -m robot.run -A local_args.txt --include smokeANDsg --exclude draft --loglevel TRACE --outputdir "Reports\qa02\sg" robot-tests
::python -m robot.run -A local_args.txt --include smokeANDsgANDenrollment --exclude draft --loglevel TRACE --outputdir "Reports\stg\enr\1" robot-tests


::Execution run
::python -m robot.run -A local_args.txt --outputdir "Reports" src/test/resources/robot-tests/sguserstories/sg_us_028919.txt

::
::python -m robot.run -A local_args.txt src/test/resources/