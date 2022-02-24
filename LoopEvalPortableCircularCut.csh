# > LoopEvalPortableCircularCut.csh
# - Runs LoopEvalPortableCircularCut.C for all detectors
# - Output file - <detector>_CircularCut.txt, containing the terminal output of LoopEvalPortableCircularCut.C for the given detector

# Authors - Sagar Joshi (ee190002054@iiti.ac.in)
#           Siddhant Rathi (me190003061@iiti.ac.in)
 
# v1.0

#!/usr/local/bin/tcsh
 setenv HOME /eic/u/$LOGNAME
 source /etc/csh.login
 foreach i (/etc/profile.d/*.csh)
   source $i
 end
 source $HOME/.login
 source /cvmfs/eic.opensciencegrid.org/default/opt/fun4all/core/bin/eic_setup.csh -n
  
    # printenv
    # this is how you run your Fun4All_G4_sPHENIX.C macro in batch: 

 root.exe -q -b 'LoopEvalPortableCircularCut.C("CEMC")' > CEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortableCircularCut.C("EEMC")' > EEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortableCircularCut.C("FEMC")' > FEMC_CircularCut.txt
 root.exe -q -b 'LoopEvalPortableCircularCut.C("FHCAL")' > FHCAL_CircularCut.txt
 root.exe -q -b 'LoopEvalPortableCircularCut.C("HCALIN")' > HCALIN_CircularCut.txt
 root.exe -q -b 'LoopEvalPortableCircularCut.C("HCALOUT")' > HCALOUT_CircularCut.txt
 
 echo Done





