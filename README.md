# xmail
Command line email tool, notify tool, very easy-to-use. Perl and Bash-shell version provide.

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

Very easy to install xmail, just move the excutable file `xmail` into your `/usr/bin` Path, 

<code> sudo mv xmail /usr/bin/xmail </code>

Or add the `xmail` path into `$PATH`,

<code> export PATH=/path/to/xmail:$PATH </code>


## Instance

* Alert me, when the program is finished.
* Email me the content from a website(Firstly you have the scripts to grab the web page).
* 


  
