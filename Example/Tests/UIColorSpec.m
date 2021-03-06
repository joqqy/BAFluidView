//The MIT License (MIT)
//
//Copyright (c) 2016 Bryan Antigua <antigua.b@gmail.com>
//
//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.
//
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.

#import "UIColor+ColorWithHex.h"


SpecBegin(UIColor)


describe(@"UIColor", ^{
    
    
    //(UIColor*)colorWithHex:(int)hex;
    it(@"should create a UIColor with a given hex", ^{
        UIColor* testColor = [UIColor colorWithHex:0x123456];
        expect(testColor).to.beKindOf([UIColor class]);
        const CGFloat *testColorComponents = CGColorGetComponents(testColor.CGColor);
        CGFloat testRedComponent = (CGFloat)0x12/(CGFloat)0xFF;
        expect(testColorComponents[0]).to.equal(testRedComponent);
        CGFloat testGreenComponent = (CGFloat)0x34/(CGFloat)0xFF;
        expect(testColorComponents[1]).to.equal(testGreenComponent);
        CGFloat testBlueComponent = (CGFloat)0x56/(CGFloat)0xFF;
        expect(testColorComponents[2]).to.equal(testBlueComponent);
    });
    
});

SpecEnd

