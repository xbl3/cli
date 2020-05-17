# rclone/gclone
## THE MOTHER FUCKIN SHIT
### works around windows dumbass too!!

## just going to use as dump for now 
### have a lot of shit going on so might revist   

> beta is hard linked cause changes all the time    
> any rclone/gclone work over unc paths&&||symlink dirs   

    beta copy "mySource" "my:remote" --progress --fast-list --use-mmap --exclude "*.txt"     
   ## Static flags  
   ###  rclone help flags 
   ***winders uses caret^ instead of \ ***
   ** foos so not like above itll be a vertical chains **
   > [space then ^]:..... ^    
        
        beta copy ^     
       "mySource" "my:remote" ^     
        --progress ^    
        --fast-list ^    
         --use-mmap ^     
         --exclude "*.txt"     
              
 > Standard flags pretty much:           
 --progress 
 --fast-list 
 --use-mmap 
 > Also use a lot       
 --no-traverse 
 --no-update-modtime 
 --ignore-case 
 --stats-one-line    
 
 > copy jobs   
 --size-only 
 --copy-links  
 
 > move jobs   
 --checksum     
 --skip-links      
 
 > if using env vars
    change: 
       hyphens to_underscores_    
       MAKE_ALL_CAPS     
       RCLONE_IS_PREFIX    
     
 > or set in config/advanced
  --drive-acknowledge-abuse     
    --drive-keep-revision-forever   
      --drive-list-chunk     
         !!!!!!!!!    
       --drive-server-side-across-configs  
          !!!!!!!!    
       --drive-shared-with-me
    --drive-skip-checksum-gphotos   
     --drive-skip-gdocs   
       
       
       
 ## Dynamic [VAR] flags
 > Standard for me     
    
 --backup-dir "drive:path"    
 ***must be at least 1 level above [not root] ***   
 
 --log-file "log/path"     
 --log-level "INFO"    
 --bind  #IP     
 --exclude {""System**","$RECYCLE**","Windows**","$Recycle**""}
 ***theres fuckin tons more too like bin ms-* and on and on***    
 
 > others of note **most can be set in conf**     
 --config "diff/config/path"      
 --transfers #        
 --checkers #      
 --buffer-size #      
 --cache-workers #    
 --drive-team-drive "#ID"     
    
 --drive-service-account-file "/paths/of/sa/json"     
 >"/path/to/pool/"   ***use pools in gclone***      
 
 --drive-client-id #id ** useless if using sa **      
 --drive-client-secret #shh **again pointless with sa **     
 --drive-chunk-size #       
  --drive-v2-download-min-size 512k     
 --exclude-if-present ".turdDrop"     
 --include "*.ext" **see above for single command chaining**     
 --exclude "**/**allThings**/**"     
 
 * more to come
 * just gonna dump some vurrent ones if interested
 
 


