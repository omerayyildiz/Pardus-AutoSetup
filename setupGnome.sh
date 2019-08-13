#!/bin/bash
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(pwd)/|g" setupGnome.sh
cd sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parGnome.sh
sed -i "s|/media/pardus/TUX/Pardus-AutoSetup/|$(cd .. && pwd)/|g" parXfce.sh
bash parGnome.sh
<<pardus
                                                                                                     
                                                                                                    
                     .-://////////////////////////////////////////////////////:-.                   
                `/sdNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNmy+.              
              /hMMMmyo/:------------------------------------------------------:/oydMMMd+`           
            /mMMd+.````````````````````````````````````````````````````````````````.+hMMN+          
           yMMm/```:ymNNmh+```-ymNNmdo```.sdNNNds.``sNNNNNmy-``omNh`:mNd-``/hmNNmh/```:dMMh`        
          sMMh.```:MMMMMMMMs`.NMMMMMMMh``mMMMMMMMm``mMMMMMMMN.`hMMM.+MMM/`+MMMMMMMM+````sMMh        
         .MMN.````+MMMo-MMMh`:MMMy.NMMm`.MMMd.dMMM``mMMN.hMMM-`hMMM.+MMM/`sMMM//MMMs`````dMM:       
         /MMh`````+MMM+.MMMh`:MMMy`NMMm`.MMMd`dMMM``mMMN`yMMM-`hMMM.+MMM/`sMMM::MMMs`````sMMs       
         oMMs`````+MMM+.MMMh`:MMMy`NMMm`.MMMd`dMMM``mMMN`yMMM-`hMMM.+MMM/`sMMM::MMMs`````+MMy       
         yMM+`````+MMM+.MMMh`-NMMo`NMMm`.MMMd`yMMm``mMMN`yMMM-`hMMM.+MMM/`sMMM:-NMM+`````:MMd       
         dMM:`````+MMMs:MMMh``.-:--NMMm`.MMMd``--.``mMMN`yMMM-`hMMM.+MMM/`sMMM+-:--``````.MMN       
         NMM.`````+MMMMNMMMo``/dNNNMMMm`.MMMd```````mMMN`yMMM-`hMMM.+MMM/`/MMMNNNmo```````NMM`      
        `MMN``````+MMMNddy/``-NMMNdMMMm`.MMMd```````mMMN`yMMM-`hMMM.+MMM/``:yddmMMM+``````mMM-      
        -MMm``````+MMMo``````-MMMmsMMMm`.MMMd```````mMMMomMMM-`hMMMshMMM/`.+ooohMMMo``````hMM/      
        /MMh``````+MMM+```````yMMMMMMN+``MMMh```````mMMMMMMMy``/mMMMMMMh.`oMMMMMMMd-``````sMMo      
        oMMs```````+o+.````````-+ooo/.```/oo-```````:ooooo+-````./ooo+:```.+ooooo:.```````+MMy      
        yMMo``````````````````````````````````````````````````````````````````````````````/MMd      
        dMM/```````````-/shdmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmdhs+:```````````-MMN      
        mMM-````````-odNMMmddddddddddddddddddddddddddddddddddddddddddddddddmNMNms:`````````MMM`     
       `MMM```````.sNMNdo//:::::::::::::::::::::::::::::::::::::::::::::::://ohNMNy-```````mMM-     
       .MMm``````:mMMh/::::::::::::::::::::::::::::::::::::::::::::::::::::::::/yNMN/``````hMM/     
       :MMd`````:NMNo::::/oso+/::::::::::::::::::::/::::::::::::::::::::/+oo+::::+NMN/`````yMM+     
       +MMy`````dMMs:::+dNMNMNNdyo/::::::/++oyhdmmmNmmdhyso+//:::::/oydmNNNMMmo:::+MMm`````oMMs     
       sMMo````.MMN:::hMMd/-:oymNMNmhyhmmNNMMNmdhyssyhdmNNMNNmmdyhmNMMmho:-:dMMd/::mMM:````/MMh     
       hMM/````:MMm::dMNs.`````.-+mMMMmdys+/-:-````````.--:+oyhdMMMNo-.``````+NMm::hMM+````-MMm     
       dMM:````/MMd::mMN-````````/NMN+hdy.``/m+````````````````./mMMo````````.mMN::yMMo````.MMN     
       sMMs````oMMh::/mMN+``````+NMm:/MMMo``sd-``````````````````-dMMo``````/mMN+::sMMy````+MMh     
       .NMN:```yMMs:::/mMMh/.``oMMm-.-ohs.````````````````````````.hMMs``./hNMm+:::oMMd```-mMM:     
        /NMN/``hMMo:::::hMMMmddMMd.:mmy``.+/```````````````````````.hMMddmMMMd/::::+MMm``:mMM+      
         :mMNs-mMM+::::::oNMMMMMh.`.sy/``-s+`````````````````````````yMMMMMMs:::::::MMN.oNMN/       
          .yNMmMMM/:::::::oMMMMh.`````````````````````````````````````sMMMMs::::::::MMMmMNh-        
            -yNMMM:::::::::NMMy.```````````````````````````````````````sMMM/::::::::mMMNy:          
              :MMN::::::::hMMy`````-:+ooshhhhdd+``````:ddhhhhsoo+/-.````oMMd::::::::dMM+            
              :MMm:::::::/MMm```````````.sy::yMs``````+Mh/:yy-```````````hMM+:::::::hMM+            
              +MMh::::::::MMm````````````````/M+``````:Mo````````````````hMM+:::::::yMMs            
              oMMy::::::::mMM-```````````````dm````````dN.``````````.o.``NMM::::::::sMMy            
              yMMs::::::::yMMo``````````````-Ns````````+M/``````````sM/`/MMd::::::::+MMd            
              hMMo::::::::+MMd``````````.````:-````````.:````-```/y::o.`yMMs::::::::/MMN            
              mMM+:::::::::NMM-```````.s+````-hddddddddh:````:h.`-+:dmd.NMN/:::::::::MMM`           
              NMM::::::::::yMMs``````-dM.`````+mMMMMMMNo.`````mm:```oyo+MMy::::::::::NMM.           
             `MMN:::::::::::mMNs+:..:NMm``..-/:.sNMMNy--/:..``hMN-..-/smMm:::::::::::mMM-           
             -MMm:::::::::::/sdNNMMNMMMMysoo+/-``-mN:``-/+oosyNMMNNNMMNmh/:::::::::::dMM/           
             .MMN:::::::::::::::+oyNNNMMMds++/:```hm```://+shMMMNNNhs+/::::::::::::::dMM:           
              mMMo:::::::::::::/shyo//yNNMNoo+/.``hm.``/+o+mMMNh+/oyhs/:::::::::::::/MMN`           
              :MMN/::::::::::ohyo:::ohs/+NMMh.`-ohyyds-`.yMMNo:sho:::+yho/::::::::::mMM+            
               oMMm/:::::::/yo::::+hy::+hoyNMNdNy-``-sNdmMMhoho::sho::::+s+:::::::/dMMy             
                +NMNs::::::::::::yy/::yy:::+dMMm+///++hMMm+:::yh/::sy::::::::::::oNMMo              
                 -hMMms/:::::::::/::/do::::::odNNMMMMNNdo::::::+d+:::/:::::::::omMMd:               
                   :hNMNdyo/:::::::+d/:::::::::://++//::::::::::/ho:::::::/+sdNMMd/                 
                     .+hNMMMNdyo/::o::::::::::::::::::::::::::::::o::/oydmMMMNdo-                   
                         -/shNMMMNdhs+::::::::::::::::::::::::::+oydNMMMNds/-`                      
                              .:oymMMMMmhso+/:::::::::::::/oshmNMMMmho/.                            
                                   `:+ydNMMMMMNmmmmmmmmNNMMMMNmy+:.                                 
                                         .:/osyyhhhhhhyyso+:-`                                     
pardus