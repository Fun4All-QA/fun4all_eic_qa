# > hadd.csh
# - Runs hadd.C for all detectors
# - Output file - None of its own

# Authors - Siddhant Rathi (me190003061@iiti.ac.in)
#           Sagar Joshi (ee190002054@iiti.ac.in)

# v1.0

#!/usr/local/bin/tcsh
 setenv HOME /eic/u/$LOGNAME
 source /etc/csh.login
 foreach i (/etc/profile.d/*.csh)
   source $i
 end
 source $HOME/.login
 source /cvmfs/eic.opensciencegrid.org/default/opt/fun4all/core/bin/eic_setup.csh -n


 root.exe -q -b hadd.C\(\"EEMC\"\)
 root.exe -q -b hadd.C\(\"CEMC\"\)
 root.exe -q -b hadd.C\(\"FEMC\"\)
 root.exe -q -b hadd.C\(\"HCALIN\"\)
 root.exe -q -b hadd.C\(\"HCALOUT\"\)
 root.exe -q -b hadd.C\(\"FHCAL\"\)

echo Statistics Combined
