# xmail
command line email tool, notify tool, very easy-to-use.

## Usage

<code>xmail -u useremail -s subject -m message [-option value]</code>

## Option

        -u      [str]*  protein name(UniProt accession number)
        -s      [str]   cut-off of Prediction LR, default l=0.5
        -m      [str]   cut-off of Prediction LR, default l=0.5
    
        -h              print this usage        

## Examples:
        xmail -u xxx.com -s "bowtie2 complete!" -m "bowtie2 run complete! 1111.fq file"

## Installation


### requirements
  perl module: Emailesque
cpanm --force Emailesque

### configuration
  1. config the sender username and password
  2. perl path
  
