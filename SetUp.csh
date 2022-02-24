#!/usr/local/bin/tcsh
 setenv HOME /eic/u/$LOGNAME
 source /etc/csh.login
 foreach i (/etc/profile.d/*.csh)
   source $i
 end
 source $HOME/.login
 source /cvmfs/eic.opensciencegrid.org/default/opt/fun4all/core/bin/eic_setup.csh -n


set particle = mu-                    #e-, pi-, etc.
set email = me190003061@iiti.ac.in    #email address to notify condor job completion
set events = 50                    #events per batch (10 batches)
set nJobs = 1000
set lowEnergy = 4.
set highEnergy = 4.

 sed -i "s/pi-/$particle/g" macros/Fun4All_G4_EICDetector.C
 sed -i "s/emailHere/$email/g" macros/condor.job
 sed -i "s/noOfJobsCombiner/$nJobs/g" Combiner.csh
#sed -i "s/emailHere/$email/g" hadd.job
 sed -i "s/nEvents/$events/g" macros/myscript.csh
 sed -i "s/lowEnergyLimit/$lowEnergy/g" macros/Fun4All_G4_EICDetector.C
 sed -i "s/highEnergyLimit/$highEnergy/g" macros/Fun4All_G4_EICDetector.C
 
set j = 1

while ($j < $nJobs)
    cp -r macros macros$j
    cd macros$j
    condor_submit condor.job
    cd ../
    @ j++
end

cd macros
condor_submit condor.job
cd ../

echo Jobs Submitted
