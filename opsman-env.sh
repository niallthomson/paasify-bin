# Source me

if [ ! -f "terraform.tfstate" ]; then
  echo "Error: Must be run from directory that contains terraform.tfstate file"
  exit 1
fi

export OM_TARGET=$(terraform output opsman_url)
export OM_USERNAME=$(terraform output opsman_username)
export OM_PASSWORD=$(terraform output opsman_password)
export OM_SKIP_SSL_VALIDATION=true