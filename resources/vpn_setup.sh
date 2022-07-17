# VPN Setup

### See the docs for more details: https://github.com/trailofbits/algo

### Clone the repo
git clone https://github.com/trailofbits/algo.git

### Install dependencies
python3 -m pip install --user ansible

python3 -m virtualenv --python="$(command -v python3)" .env &&
  source .env/bin/activate &&
  python3 -m pip install -U pip virtualenv &&
  python3 -m pip install -r requirements.txt

### Run the non-interactive setup script
### NOTE: Be sure to replace "do_token" with an appropriate Digital Ocean API token
cd algo && ansible-playbook main.yml -e "provider=digitalocean
                                            server_name=algo
                                            ondemand_cellular=false
                                            ondemand_wifi=false
                                            dns_adblocking=true
                                            ssh_tunneling=true
                                            store_pki=true
                                            region=sfo3
                                            do_token=do_token"

