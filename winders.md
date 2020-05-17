# M$ DOS 2.0

## mklink 
### symboliclinks {files/dirs} // hardlink files // junctions/repoarse dirs


> hardlinks   
must both reside on same drive    
> symlink-dirs   
* works with most anything   
* ingress net users will break typically    *** can see source dir ****   
* use to workaound junction limitations with unc paths       
      
     mklink /d "\\my\unc\path" "\winders\comeon\really"     
     mklink /j "\hop\and\skip" "\winders\comeon"    
        
* also good to avoid pushPop {pushd/popd}
** works around/with subst   
* will make !file! at unc if you forget /d
> junctions/reparse points
* NTFS required
* makes it seems like you are in that dir
* doesnt break across unc paths 
** unc requires symlinkd dir to hop
** same kinda trick works against DrvieFS **reports as Fat32 now**    
## use rmdir when removing!!!
> data loss has occured
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
#####################################################

# unchecked but how it started
** wanna say its backwards or i just always get it fuckin backwards **
mklink /?     
*** files ***
     {symbolic [default] || /h [hardlink]}
     
 *** dirs ***
     {/j [junction/reparse] || /d [symlink/pointer]}
     
mklink /h "\windows\new.ext" "appdir\src.app"

## junction/reparse
**ntfs required**
