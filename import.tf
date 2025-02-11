terraform import aws_instance.webserver-2 i-123

or 

import {
  to = aws_instance.webserver
  id = "id-value"
}

after run terraform  plan or terraform plan -generate-config-out=ourfilename.tf 
use this generated file as blueprint to recrate or reuse 
alternative option is put dummy resouce block (to imported)-after run terraform import>>resource
will be imported into terra statefile and then put this values in dummy resource block
created with the attributes imported 