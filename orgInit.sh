sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s --json --userprefix 2fa -o work.shop
sfdx force:source:push
sfdx force:user:permset:assign -n CustomerID
sfdx shane:user:password:set -l User -g User -p LetsAllMFA --json
sfdx force:org:open