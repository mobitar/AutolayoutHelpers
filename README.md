##Before
``` 
NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:self.titleBar
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self.view
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1.0 constant:10.0];

NSLayoutConstraint *top = [NSLayoutConstraint constraintWithItem:self.titleBar
                                                       attribute:NSLayoutAttributeTop
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self.view
                                                       attribute:NSLayoutAttributeTop
                                                      multiplier:1.0 constant:10.0];

NSLayoutConstraint *width = [NSLayoutConstraint constraintWithItem:self.titleBar
                                                       attribute:NSLayoutAttributeWidth
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:nil
                                                       attribute:NSLayoutAttributeNotAnAttribute
                                                      multiplier:1.0 constant:50.0];

NSLayoutConstraint *height = [NSLayoutConstraint constraintWithItem:self.titleBar
                                                        attribute:NSLayoutAttributeHeight
                                                        relatedBy:NSLayoutRelationEqual
                                                           toItem:nil
                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                            multiplier:1.0 constant:50.0];
```
    
##After
    
```
NSLayoutConstraint *left = constraintLeft(self.titleBar, self.view, 10);
NSLayoutConstraint *top = constraintTop(self.titleBar, self.view, 0);
NSArray *sizeConstraints = constraintsEqualSize(self.titleBar, nil, 50, 50);
```