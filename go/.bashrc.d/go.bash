gopath=$(go env GOPATH)
[[ -n "$gopath" ]] || return
if [ -d "$gopath/bin" ]; then
    PATH="$gopath/bin:$PATH"
fi
unset -v gopath
