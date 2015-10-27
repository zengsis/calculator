//
//  ViewController.m
//  jisuanqi
//
//  Created by apple on 15/8/14.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
NSString *_firstNum;
NSString *_secondNum;
    NSString *_operator;

}
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _firstNum=@"";
    _secondNum=@"";
    _operator=@"";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)oneClicked:(id)sender {
    if(_operator.length==0){
        _firstNum=[_firstNum stringByAppendingString:@"1"];
        _resultLabel.text=_firstNum;
    }else{
        _secondNum=[_secondNum stringByAppendingString:@"1"];
        _resultLabel.text=_secondNum;
    }
    
}
- (IBAction)twoClicked:(id)sender {
    if(_operator.length==0){
        _firstNum=[_firstNum stringByAppendingString:@"2"];
        _resultLabel.text=_firstNum;
    }else{
        _secondNum=[_secondNum stringByAppendingString:@"2"];
        _resultLabel.text=_secondNum;
    }
    
}
- (IBAction)threeClicked:(id)sender {if(_operator.length==0){
    _firstNum=[_firstNum stringByAppendingString:@"3"];
    _resultLabel.text=_firstNum;
}else{
    _secondNum=[_secondNum stringByAppendingString:@"3"];
  }
}
- (IBAction)fourClicked:(id)sender {if(_operator.length==0){
    _firstNum=[_firstNum stringByAppendingString:@"4"];
    _resultLabel.text=_firstNum;
}else{
    _secondNum=[_secondNum stringByAppendingString:@"4"];
   }
}
- (IBAction)fiveClicked:(id)sender {if(_operator.length==0){
    _firstNum=[_firstNum stringByAppendingString:@"5"];
    _resultLabel.text=_firstNum;
}else{
    _secondNum=[_secondNum stringByAppendingString:@"5"];
  }
}
- (IBAction)sixClicked:(id)sender {
    if (_operator.length == 0) {
        _firstNum = [_firstNum stringByAppendingString:@"6"];
        _resultLabel.text = _firstNum;
    }else{
        _secondNum = [_secondNum stringByAppendingString:@"6"];
        _resultLabel.text = _secondNum;
    }
    

}
- (IBAction)serverClicked:(id)sender {
    if (_operator.length == 0) {
        _firstNum = [_firstNum stringByAppendingString:@"7"];
        _resultLabel.text = _firstNum;
    }else{
        _secondNum = [_secondNum stringByAppendingString:@"7"];
        _resultLabel.text = _secondNum;
    }
    

}

- (IBAction)eightClicked:(id)sender {if (_operator.length == 0) {
    _firstNum = [_firstNum stringByAppendingString:@"8"];
    _resultLabel.text = _firstNum;
}else{
    _secondNum = [_secondNum stringByAppendingString:@"8"];
    _resultLabel.text = _secondNum;
}
    

}
- (IBAction)nineCliked:(id)sender {
    if (_operator.length == 0) {
        _firstNum = [_firstNum stringByAppendingString:@"9"];
        _resultLabel.text = _firstNum;
    }else{
        _secondNum = [_secondNum stringByAppendingString:@"9"];
        _resultLabel.text = _secondNum;
    }
    


}

- (IBAction)zoneClicked:(id)sender {
    if (_operator.length == 0) {
        _firstNum = [_firstNum stringByAppendingString:@"0"];
        _resultLabel.text = _firstNum;
    }else{
        _secondNum = [_secondNum stringByAppendingString:@"0"];
        _resultLabel.text = _secondNum;
    }
    

}

- (IBAction)addClicked:(id)sender {
    _operator=@"+";
}
- (IBAction)minusClicked:(id)sender {
    _operator=@"-";
}
- (IBAction)multiplyClicked:(id)sender {
    _operator=@"*";
}
- (IBAction)divideClicked:(id)sender {
    _operator=@"/";
}
- (IBAction)resetClicked:(id)sender {
    _operator=@"";
    _firstNum=@"";
    _secondNum=@"";
    _resultLabel.text=@"0";
}

- (IBAction)equalClicked:(id)sender {NSInteger result;
    NSInteger  sec = _secondNum.integerValue;
    NSInteger  fir = _firstNum.integerValue;
    if ([_operator isEqualToString:@"+"]) {
        result = sec+fir;
    }else if ([_operator isEqualToString:@"-"]){
        result = fir-sec;
    }else if ([_operator isEqualToString:@"*"]){
        result = fir*sec;
    }else if ([_operator isEqualToString:@"/"]){
        result = fir/sec;
    }
    NSString *resultStr = [NSString stringWithFormat:@"%ld",result];
    _resultLabel.text=resultStr;
}




@end
