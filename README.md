# deploy_mz_monaco

as a expert coder wondows and dynatrace:
create a powershell script to use envirioment variable:
	DT_TENANT
	DT_TOKEN
	DT_APP_CODE
powershell ejcute this comando (use monaco to deploy template on dynatrace enviroment):
	./monaco deploy ./BCP_dt_backup/manifest.yaml
pwershell ensure if the varible are corrected declared 
powershell manage errors
create procedure to:
	indicar los permisos del token:
		Read configuration (ReadConfig)
		Required for reading existing auto-tags.
		Write configuration (WriteConfig)
		Required for creating your auto-tag.
		Read settings (settings.read) (API v2)
		Required for reading settings configuration.
		Write settings (settings.write) (API v2)
		Required for modifying settings configuration.
	declare enviroment varible
	detail of each eviroment varible
	details of each file:
		manifest.yaml
		deploy_management_zone_dynatrace (powershell file)
	execute power sheell called deploy_management_zone_dynatrace
	interprete results
