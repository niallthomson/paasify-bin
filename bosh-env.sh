DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source $DIR/opsman-env.sh

tmp_ssh_file="$(mktemp)"

terraform output opsman_ssh_private_key > $tmp_ssh_file

chmod 400 $tmp_ssh_file

eval "$(om bosh-env -i $tmp_ssh_file)"