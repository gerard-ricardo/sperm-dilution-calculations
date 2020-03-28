# Sperm calculations
###############################################
#Haemocytometer counts
#Assuming you haven't overly diluted your sperm, you would count 5 of the second smallest square. There should be ~100 cells within this square.
#Good practise is to randomly refill the haemocytomer after each square count because the variability in the primary stock can be high. Make sure to resuspend. 
library(scales)
ave.count = mean(c(76, 102, 91, 112, 85))
ave.count

primary.stock = ave.count *25 * 10000  #assuming the 2nd smallest square is counted
scientific(primary.stock, digits = 3)   #your primary stock

############################################################


# There are three sperm concentrations to work-out
# .	The primary stock, calculated with the haemocytometer
# .	The working stock, determined by what is needed in the desired sperm concentration and made by diluting the primary stock
# .	The desired stock, determined by what is needed in the experiment and made by diluting 1mL or sperm with sample and 1 ml of eggs.


# 1) First work out what Working stock is required
# Sample volume (inc. sperm volume (1ml) and 1 mL eggs) x Desired stock. For example:
#   (x sperm)/(50 ml)=  (???10???^6  sperm)/(1 ml)         
# x sperm=5 x 10^7 sperm
# This is the usual concentration to aim at for a 50 ml sample container. Obviously the working stock needs to have a lower sperm concentration 
# than the primary stock, so if your primary stock is < 5 x 10^7, you will need to use a magnitude lower desired stock (10^5).
primary.stock = 7*10^7   #change to above if you used the haemocytometer calcs
sample.vol = 50   #change this to your sample container volumn
max.desired.stock = primary.stock/sample.vol
scientific(max.desired.stock, digits = 3)   #this is the maximum desired stock you could use in the experiment. Suggest rounding down to the nearest magnitude unless you are desperately low
desired.stock = 10^6  #this must be less or equal to max desired stock
sperm.vol = 1
work.stock = desired.stock / sperm.vol * sample.vol
work.stock  #this is the concentration you now need to create by diluting the primary stock


# 2) Work out how many mL of Primary stock need to be added to a XX ml container to create the Working stock. Fill the rest with FSW to XX mL mark. For a 400 mL container.  
# (x mL)/(400 mL) × Primary stock = Working stock

work.stock.container = 400   #the volumn of the working stock container
primary.sample = work.stock * work.stock.container / primary.stock
primary.sample   #add this amount into of primary stock into the working stock container. Fill the rest with FSW. Now you have your working stock.
#Adding  your sperm vol into your sample will give your desired spermc conc. 







