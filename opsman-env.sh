# Source me

if [ ! -f "terraform.tfstate" ]; then
  echo "Error: Must be run from directory that contains terraform.tfstate file"
  exit 1
fi

export OM_TARGET=$(terraform output ops_manager_host)
export OM_USERNAME=$(terraform output ops_manager_user)
export OM_PASSWORD=$(terraform output ops_manager_password)