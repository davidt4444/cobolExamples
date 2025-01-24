# cobolExamples
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> /Users/davidthigpen/.zprofile
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> /Users/davidthigpen/.zprofile
eval "$(/usr/local/bin/brew shellenv)" 

brew install gnucobol

Grok
devise a coding learning exercise for cobol
generate data for this exercise

mkdir PayrollExample
cd PayrollExample
create payroll.cob with code from example 
cobc -x payroll.cob
./payroll

