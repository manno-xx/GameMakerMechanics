/// @description spawn a bunch of objects based on their drop rate 

// new random seed every run
randomise();

// the array of possible items
var drops = [];

array_push(drops, {
    item: obj_loss,
    dropRate: 99
});

array_push(drops, {
    item: obj_win,
    dropRate: 1
});

// it would be a bit more clear to have the data be like:
// {item: obj_tree, dropRate: 0.8}, {item: obj_snowMan, dropRate: 0.2}
// Meaning: the drop rates add up to 1 (or 100 percent)
// You can make sure you manually do that _or_ let code and some math make it so
// the following two loops make it so

var sumOfDropRates = 0;

// loop to get the sum of all drop rates
for (var i = 0; i < array_length(drops); i++) 
{
	sumOfDropRates += array_get(drops, i).dropRate;
}

// loop to make all drop rates add up to 1
for (var i = 0; i < array_length(drops); i++) 
{
    array_get(drops,i).dropRate = array_get(drops,i).dropRate / sumOfDropRates;
}

// Gets _one_ item from the array, taking weights into account
function GenerateRandomItem(data){
    var rnd = random(1);
    
    var dropRateSum = 0;
    for (var i = 0; i < array_length(data); i++)
    {
        dropRateSum += array_get(data,i).dropRate;
        if(dropRateSum >= rnd)
        {
            return array_get(data, i).item;
        }
    }
}

//the generated sprites are 32x32
var spriteWidth = 32;
var spriteHeight = 32;

// generate a screen full of random items based on their drop rate 
for (var yPos = 0; yPos < floor(room_height / spriteHeight); yPos++) 
{
    for (var xPos = 0; xPos < floor(room_width / spriteWidth); xPos++) 
    {
       var inst = instance_create_layer(spriteWidth * xPos, spriteHeight * yPos, "Instances", GenerateRandomItem(drops));
       inst.image_index = 0;
   }
}

