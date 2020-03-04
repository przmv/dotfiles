# .bashrc
# Load system default .bashrc
if [ -f /etc/skel/.bashrc ]; then
    . /etc/skel/.bashrc
fi

# Load Bash-specific startup files
for bash in "$HOME"/.bashrc.d/*.bash ; do
    [[ -e $bash ]] || continue
    source "$bash"
done
unset -v bash
