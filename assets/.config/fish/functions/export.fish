function export
    if [ $argv ] 
        set var (printf "%s\n"  $argv | cut -f1 -d=)
        set val (printf "%s\n"  $argv | cut -f2 -d=)
        set -g -x $var $val
    else
        printf "%s\n"  'export var=value'
    end
end