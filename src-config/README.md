# xmail
command line email tool, notify tool, very easy-to-use.

## Usage

<code>xmail -u useremail -s subject -m message [-option value]</code>

## Option

        -u      [str]*  the email you want to send notification to. eg. xxx@gmail.com
        -s      [str]*  the subject of the email.
        -m      [str]   more detaills can be placed.  
                            
        -h              print this usage        



## Examples:

        xmail -u xxx@gmail.com -s "xxx task completed!"                


## Installation


### requirements
 
        perl module: Emailesque
 
        or
        
        cpanm --force Emailesque

### configuration

        1. config the sender username and password at line 57 and 68,69 

        2. sudo mv xmail /usr/xmail

  
