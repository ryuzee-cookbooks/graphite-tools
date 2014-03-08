default["graphite-tools"]["cleanup"]["days_before"] = 14 
default["graphite-tools"]["cleanup"]["cron"]["hour"] = "0,6,12,18" 
default["graphite-tools"]["cleanup"]["cron"]["minute"] = "5" 

default["graphite-tools"]["path"]["graphite_bin"] = "/opt/graphite/bin"
default["graphite-tools"]["path"]["whisper"] = "/opt/graphite/storage/whisper"

default["graphite-tools"]["login"]["admin_user"] = "root"
default["graphite-tools"]["login"]["admin_password"] = "password"

default["graphite-tools"]["sensu"]["api_endpoint"] = "http://localhost:9000"
