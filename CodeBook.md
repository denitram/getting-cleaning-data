## Codebook 

The tidy data set contains 88 columns, the processing of the raw data is described in `README.md`.  

The column's labels `3:88` are build from the labels in `feature.txt` with the following ajustements:

* leading `t` extended to time  
* leading `f` extended to  frequencyDomainSignal  
* `Acc` exended to Acceleration
* `mag` extended to Magnitude  
* `MeanFrq` extended to MeanFrequency  
* `std` extended to StandardDeviation   
*  `(` and ')' removed  

### Variables
    1 subject  (Subjet id - integer)
    2 activity (Label from the file `activity_labels.txt` provided in the raw data set - string)
    3 meanOfVar_timeBodyAccelerationMeanX                                                  
    4 meanOfVar_timeBodyAccelerationMeanY                                                  
    5 meanOfVar_timeBodyAccelerationMeanZ                                                  
    6 meanOfVar_timeGravityAccelerationMeanX                                               
    7 meanOfVar_timeGravityAccelerationMeanY                                               
    8 meanOfVar_timeGravityAccelerationMeanZ                                               
    9 meanOfVar_timeBodyAccelerationJerkMeanX                                              
    10 meanOfVar_timeBodyAccelerationJerkMeanY                                              
    11 meanOfVar_timeBodyAccelerationJerkMeanZ                                              
    12 meanOfVar_timeBodyGyroMeanX                                                          
    13 meanOfVar_timeBodyGyroMeanY                                                          
    14 meanOfVar_timeBodyGyroMeanZ                                                          
    15 meanOfVar_timeBodyGyroJerkMeanX                                                      
    16 meanOfVar_timeBodyGyroJerkMeanY                                                      
    17 meanOfVar_timeBodyGyroJerkMeanZ                                                      
    18 meanOfVar_timeBodyAccelerationMagnitudeMean                                          
    19 meanOfVar_timeGravityAccelerationMagnitudeMean                                       
    20 meanOfVar_timeBodyAccelerationJerkMagnitudeMean                                      
    21 meanOfVar_timeBodyGyroMagnitudeMean                                                  
    22 meanOfVar_timeBodyGyroJerkMagnitudeMean                                              
    23 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanX                                
    24 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanY                                
    25 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanZ                                
    26 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanFrequencyX                       
    27 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanFrequencyY                       
    28 meanOfVar_frequencyDomainSignalsBodyAccelerationMeanFrequencyZ                       
    29 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanX                            
    30 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanY                            
    31 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanZ                            
    32 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanFrequencyX                   
    33 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanFrequencyY                   
    34 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkMeanFrequencyZ                   
    35 meanOfVar_frequencyDomainSignalsBodyGyroMeanX                                        
    36 meanOfVar_frequencyDomainSignalsBodyGyroMeanY                                        
    37 meanOfVar_frequencyDomainSignalsBodyGyroMeanZ                                        
    38 meanOfVar_frequencyDomainSignalsBodyGyroMeanFrequencyX                               
    39 meanOfVar_frequencyDomainSignalsBodyGyroMeanFrequencyY                               
    40 meanOfVar_frequencyDomainSignalsBodyGyroMeanFrequencyZ                               
    41 meanOfVar_frequencyDomainSignalsBodyAccelerationMagnitudeMean                        
    42 meanOfVar_frequencyDomainSignalsBodyAccelerationMagnitudeMeanFrequency               
    43 meanOfVar_frequencyDomainSignalsBodyBodyAccelerationJerkMagnitudeMean                
    44 meanOfVar_frequencyDomainSignalsBodyBodyAccelerationJerkMagnitudeMeanFrequency       
    45 meanOfVar_frequencyDomainSignalsBodyBodyGyroMagnitudeMean                            
    46 meanOfVar_frequencyDomainSignalsBodyBodyGyroMagnitudeMeanFrequency                   
    47 meanOfVar_frequencyDomainSignalsBodyBodyGyroJerkMagnitudeMean                        
    48 meanOfVar_frequencyDomainSignalsBodyBodyGyroJerkMagnitudeMeanFrequency               
    49 meanOfVar_angleTimeBodyAccelerationMeanGravity                                       
    50 meanOfVar_angleTimeBodyAccelerationJerkMeanGravityMean                               
    51 meanOfVar_angleTimeBodyGyroMeanGravityMean                                           
    52 meanOfVar_angleTimeBodyGyroJerkMeanGravityMean                                       
    53 meanOfVar_angleXGravityMean                                                          
    54 meanOfVar_angleYGravityMean                                                          
    55 meanOfVar_angleZGravityMean                                                          
    56 meanOfVar_timeBodyAccelerationStandardDeviationX                                     
    57 meanOfVar_timeBodyAccelerationStandardDeviationY                                     
    58 meanOfVar_timeBodyAccelerationStandardDeviationZ                                     
    59 meanOfVar_timeGravityAccelerationStandardDeviationX                                  
    60 meanOfVar_timeGravityAccelerationStandardDeviationY                                  
    61 meanOfVar_timeGravityAccelerationStandardDeviationZ                                  
    62 meanOfVar_timeBodyAccelerationJerkStandardDeviationX                                 
    63 meanOfVar_timeBodyAccelerationJerkStandardDeviationY                                 
    64 meanOfVar_timeBodyAccelerationJerkStandardDeviationZ                                 
    65 meanOfVar_timeBodyGyroStandardDeviationX                                             
    66 meanOfVar_timeBodyGyroStandardDeviationY                                             
    67 meanOfVar_timeBodyGyroStandardDeviationZ                                             
    68 meanOfVar_timeBodyGyroJerkStandardDeviationX                                         
    69 meanOfVar_timeBodyGyroJerkStandardDeviationY                                         
    70 meanOfVar_timeBodyGyroJerkStandardDeviationZ                                         
    71 meanOfVar_timeBodyAccelerationMagnitudeStandardDeviation                             
    72 meanOfVar_timeGravityAccelerationMagnitudeStandardDeviation                          
    73 meanOfVar_timeBodyAccelerationJerkMagnitudeStandardDeviation                         
    74 meanOfVar_timeBodyGyroMagnitudeStandardDeviation                                     
    75 meanOfVar_timeBodyGyroJerkMagnitudeStandardDeviation                                 
    76 meanOfVar_frequencyDomainSignalsBodyAccelerationStandardDeviationX                   
    77 meanOfVar_frequencyDomainSignalsBodyAccelerationStandardDeviationY                   
    78 meanOfVar_frequencyDomainSignalsBodyAccelerationStandardDeviationZ                   
    79 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkStandardDeviationX               
    80 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkStandardDeviationY               
    81 meanOfVar_frequencyDomainSignalsBodyAccelerationJerkStandardDeviationZ               
    82 meanOfVar_frequencyDomainSignalsBodyGyroStandardDeviationX                           
    83 meanOfVar_frequencyDomainSignalsBodyGyroStandardDeviationY                           
    84 meanOfVar_frequencyDomainSignalsBodyGyroStandardDeviationZ                           
    85 meanOfVar_frequencyDomainSignalsBodyAccelerationMagnitudeStandardDeviation           
    86 meanOfVar_frequencyDomainSignalsBodyBodyAccelerationJerkMagnitudeStandardDeviation   
    87 meanOfVar_frequencyDomainSignalsBodyBodyGyroMagnitudeStandardDeviation               
    88 meanOfVar_frequencyDomainSignalsBodyBodyGyroJerkMagnitudeStandardDeviation    
