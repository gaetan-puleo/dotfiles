# save path on cd
function cd {
    builtin cd $@
    pwd > ~/.cache/.last_dir
}

# restore last saved path
if [ -f ~/.cache/.last_dir ]
    then cd `cat ~/.cache/.last_dir`
fi
