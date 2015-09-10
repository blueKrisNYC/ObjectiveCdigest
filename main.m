#import <Foundation/Foundation.h>

//Objecive C cheatSheet
//  Created by Krishna on 6/3/15.
//
#import <Foundation/Foundation.h>
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //tryobjective-C cheat sheet
        //
        //
        //
        //output a basic string using NSLog
        NSLog(@"Hello, Mr. Higgie.");
        
        
        //creating a variable using NSString and using NSLog for output
        //use "NSString *fooStringName;" to declare a variable
        NSString *firstName = @"Enter Your Name Here";
        NSString *lastName = @"Enter Your Name Here";
        
        
        
        //To log display/output to screen and avoid "Format string is not a stirng literal(potentially insecure)" msg:
        // >>'NSLog(@"%@", variableName' <<
        NSLog(@"%@ %@",firstName, lastName);
        
        
        //Creating number objects
        NSNumber *age = @43;
        NSLog(@"%@", age);
        
        
        //creating an array
        NSArray *apps = @[@"AngryFowl",@"Lettertouch",@"Tweetrobot"];
        NSLog(@"%@",apps);
        
        
        //using index number to access elements in an array
        NSLog(@"%@",apps[1]);
        
        
        //recreating an array to add a new element to it (this is the only way to "update" an NSArray since they cannot be altered
        apps = @[@"AngryFowl",@"Lettertouch",@"Tweetrobot",@"Instacanvas"];
        
        
        //creating a dictionary>>format={keyName0:value0,keyName1:value1}
        NSDictionary *appRatings = @{@"keyNameGoes Here":@"valueGoes Here",
                                     @"AngryFowl": @3,
                                     @"Lettertouch": @5,
                                     @"BeJellyed": @7};
        NSLog(@"%@",appRatings);
        
        
        //accessing value of a dictionary using keyName
        NSLog(@"%@", appRatings[@"Lettertouch"]);
        
        
        //calling a method = sending messages to an object [objectName messageName];
        //in this case sending the 'description' message to the NSArray apps
        NSLog(@"%@",[apps description]);
        
        
        //storing the results of the 'description' message in a variable
        NSString *result = [apps description];
        NSLog(@"%@",result);
        
        
        //storing the results of the 'length' message that returns an NSUInteger
        NSString *city = @"Ice World";
        NSUInteger cityLength = [city length];
        NSLog(@"the variable City has %lu characters in it",(unsigned long)cityLength);
        
        
        //how to perform operations on NSNumber objects
        //assign value to NSNUmber variables
        NSNumber *higgiesAge = @6;
        NSNumber *phoneLives = @3;
        
        //create NSUInteger value to represent NSnumber variables
        NSUInteger higgiesAgeInt = [higgiesAge unsignedIntegerValue];
        NSUInteger phoneLivesInt = [phoneLives unsignedIntegerValue];
        
        
        //perform operaition and store it in a variable
        NSUInteger higgiesRealAge = higgiesAgeInt * phoneLivesInt;
        //log the output
        NSLog(@"higges real age is %lu", (unsigned long)higgiesRealAge);
        
        
        //appending strings
        NSString *fullName =[firstName stringByAppendingString:lastName];
        NSLog(@"my full name is %@", fullName);
        
        
        //using nested messages to create a space between two appended objects
        NSString *firstNamePlusSpace = [firstName stringByAppendingString:@" "];
        NSString *fullNamePlusSpace= [firstNamePlusSpace stringByAppendingString:lastName];
        NSLog(@"%@",fullNamePlusSpace);
        
        
        //passing multiple arguments to achive results of above example using less code
        NSString *NewfullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];
        NSLog(@"%@",NewfullName);
        
        
        //creating a copy of a string
        NSString *copy = [NSString stringWithString:firstName];
        NSLog(@"%@",copy);
        
        //creating emtpy objects
        
        
        //empty NSArray= NSArray *emptyArray = [NSArray array];
        //emtpy NSDictionary = NSDictionary *emtptyDict = [NSDictionary dictionary];
        
        
        //creating an empty object using alloc/init
        //common pattern for creating an emptpy object, no matter what class you use
        //these objects remain unusable until init is sent to it
        // NSString *emptyString = [[NSString alloc] init];
        //NSArray *emptyArray = [[NSArray alloc] init];
        //NSDictionary *emptyDictionary = [[NSDictionary alloc] init];
        
        //sending init to empty object
        // NSString *emptyString = [[NSString alloc] initWithString:firstName];
        
        //foramtting with stringWithFormat
        NSString *fullnameVer3 = [NSString stringWithFormat:@"%@ %@",firstName,lastName];
        NSLog(@"%@ %@",firstName, lastName);
        NSLog(@"%@",fullnameVer3);
        
        //if statements and BOOL types
        
        BOOL mrHiggieIsMean = NO;
        //when this statement is true
        if (mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        
        //using the ! sign as the negation operator
        //this statement converts the BOOL above from NO to YES
        if (!mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        
        
        //if else operators
        
        if (mrHiggieIsMean) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        else {
            NSLog(@"No, actually he's really nice");
        }
        
        //using elseif to handle more than two choices
        // arc4random() is a random number generator, % 10 gives it range from 0 - 9
        int mrHiggieIsMeanInt = arc4random() % 10;
        if(mrHiggieIsMeanInt > 3) {
            //do this
            NSLog(@"Confirmed: he is super mean");
        }
        
        else if(mrHiggieIsMean > 8) {
            //do this
            NSLog(@"Mr. Higgie is sorta nice but not really");
        }
        //if all else fails do this
        else {
            NSLog(@"Mr. Higgie is definitely mean");
        }
        
        
        // random number generator used for selecting random used as index numbers for allHats array
        int i = arc4random() % 3;
        NSArray *allHats = @[@"Sombrero",@"Fedora",@"Durby"];
        NSString *currentHat = allHats[i];
        
        //using isEqualToString to compare hat from array (random) with preselected hat
        if([currentHat isEqualToString:@"Sombrero"]){
            NSLog(@"Ese es un muy buen somrero");
        }else if ([currentHat isEqualToString:@"Fedora"]){
            NSLog(@"Mr.Higgie was an iPhone before there was iPhone");
            
        }else {
            NSLog(@"Mr.Higgie is currently hatless");
        }
        
        //switches a better way to compute if/else when you have many options
        NSInteger day = arc4random() % 8;
        switch (day) {
            case 1:
            case 2:
            case 3:
            case 4: {
                NSLog(@"Todays hat is %@:",@"Fedora");
                break;
            }
            case 5: {
                NSLog(@"Todays hat is %@:",@"Sombrero");
                break;
            }
            case 6:
            case 7: {
                NSLog(@"Todays hat is %@:",@"Durby");
                break;
                break;
            }
        }
        //Using "enum" to mask case integer for easy reading
        typedef NS_ENUM(NSInteger, DayOfWeek){
            DayOfWeekMonday = 1,
            DayOfWeekTueday = 2,
            DayOfWeekWednesday = 3,
            DayOfWeekThursday = 4,
            DayOfWeekFriday = 5,
            DayOfWeekSaturday = 6,
            DayOfWeekSunday =7
        };
        //note NSInteger is aliased as DayOfWeek
        DayOfWeek newDay = arc4random() % 8;
        switch (newDay) {
            case DayOfWeekMonday:
            case DayOfWeekTueday:
            case DayOfWeekWednesday:
            case DayOfWeekThursday: {
                NSLog(@"Todays new hat is: %@",@"Fedora");
                break;
            }
            case DayOfWeekFriday: {
                NSLog(@"Todays new hat is %@",@"Somrero");
                break;
            }
                
            case DayOfWeekSaturday: {
                NSLog(@"Todays new hat is %@",@"Durby");
                break;
            }
                
            case DayOfWeekSunday: {
                NSLog(@"Todays new hat is %@",@"Cowboy");
                break;
                
            }
                
        }
        
        
        //enumerating a dictionary
        
        //create dictionary and populate it with keyNames and values
        NSDictionary *funnyWords= @{
                                    @"Schadenfreude":@"Pleasure derived by someone from another person's misforture",
                                    @"Portmanteau":@"consisting of or combining two or more separable aspecs or qualites",
                                    @"Penultimate":@"Second to the last"
                                    
                                    };
        //for statement used for iterating through the dictionary
        for(NSString *word in funnyWords) {
            NSString *definition = funnyWords[word];
            NSLog(@"%@ is defined as %@", word, definition);
        }
        
        
        
        
        
        //formatting code block
        //this creates a method/block code called 'myFirstBlock' that logs/displays text passed to it within the ()
        void(^myFirstBlock)(NSString *)=^(
                                          NSString * text){
            NSLog(@"Block message is: %@",text);
        };
        //calling the method/block code
        myFirstBlock(@"this is text passed to the block variable");
        
        
        //NSArray using for loop --fast enumeration example #1
        //create the newHats array
        NSArray *newHats = @[
                             @"Cowboy",@"Conductor",@"Baseball",@"Beanie",@"Beret",@"Free"
                             ];
        //use for statement to iterate thru the array
        for (NSString *hat in newHats) {
            NSLog(@"Trying on hat %@", hat);
            
        }
        
        //enumeration example #2 using the "enumerateObjectsUsingBlock" statement
        //pass message block to newHats
        [newHats enumerateObjectsUsingBlock:^(NSString *hat, NSUInteger index, BOOL * stop){
            NSLog(@"%@ is a type of hat", hat);
        }
         
         ];
        
        //enunmeration example #3 passing array to varible
        void (^enumeratingBlock)(NSString *, NSUInteger, BOOL *) =
        ^(NSString *hat, NSUInteger index, BOOL *stop){
            NSLog(@"%@ is a new type of hat i can wear", hat);
            
        };
        
        [newHats enumerateObjectsUsingBlock:enumeratingBlock];
        return 0;
	}        
    }