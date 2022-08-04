/*
  Inspired by Example1_BasicReadings from
  https://github.com/sparkfun/Qwiic_Spectral_Sensor_AS726X

  Library written by Nathan Seidle & Andrew England @ SparkFun Electronics, 
  July 12th, 2017

  Requires above mentioned library. Tested with version 1.0.4.
*/

#include "AS726X.h"

//human -readable output when uncommented
//csv-style output when commented
//#define NR_VERBOSE 
#define PRINT_RAW //print RAW values
#define PRINT_CAL //print factory-calibrated AS726x values (normal operation)

AS726X sensor;

void setup() {
  Wire.begin();
  Serial.begin(115200);
  
  sensor.begin();
  sensor.setGain(0); //1x poweron default
  sensor.setMeasurementMode(3);
  sensor.setIntegrationTime(50); //50 set by begin()

  if (sensor.getVersion() == SENSORTYPE_AS7262){
#ifndef NR_VERBOSE  
  Serial.println("450-V-nonc,500-B-nonc,550-G-nonc,570-Y-nonc,600-O-nonc,650-R-nonc,,450,500,550,570,600,650,temp");
#endif  
  }
  else{
#ifndef NR_VERBOSE  
  Serial.println("610-R-nonc,680-S-nonc,730-T-nonc,760-U-nonc,810-V-nonc,860-W-nonc,,610,680,730,760,810,860,temp");
#endif  
  }
}

void loop() {
  sensor.takeMeasurements();
  //Prints all measurements
  if (sensor.getVersion() == SENSORTYPE_AS7262)
  {
    //Visible readings 
#ifdef PRINT_RAW
#ifdef NR_VERBOSE
    Serial.print(" Reading (non-calibrated): V[");
    Serial.print(sensor.getViolet(), DEC);
    Serial.print("] B[");
    Serial.print(sensor.getBlue(),DEC);
    Serial.print("] G[");
    Serial.print(sensor.getGreen(), DEC);
    Serial.print("] Y[");
    Serial.print(sensor.getYellow(), DEC);
    Serial.print("] O[");
    Serial.print(sensor.getOrange(), DEC);
    Serial.print("] R[");
    Serial.print(sensor.getRed(), DEC);
    Serial.print("]");
#else
    Serial.print(sensor.getViolet(), DEC);
    Serial.print(",");
    Serial.print(sensor.getBlue(),DEC);
    Serial.print(",");
    Serial.print(sensor.getGreen(), DEC);
    Serial.print(",");
    Serial.print(sensor.getYellow(), DEC);
    Serial.print(",");
    Serial.print(sensor.getOrange(), DEC);
    Serial.print(",");
    Serial.print(sensor.getRed(), DEC);
    Serial.print(",,");
#endif   
#endif        

#ifdef PRINT_CAL    
#ifdef NR_VERBOSE   
    Serial.print(" Reading (calibrated): V[");
    Serial.print(sensor.getCalibratedViolet(), 2);
    Serial.print("] B[");
    Serial.print(sensor.getCalibratedBlue(), 2);
    Serial.print("] G[");
    Serial.print(sensor.getCalibratedGreen(), 2);
    Serial.print("] Y[");
    Serial.print(sensor.getCalibratedYellow(), 2);
    Serial.print("] O[");
    Serial.print(sensor.getCalibratedOrange(), 2);
    Serial.print("] R[");
    Serial.print(sensor.getCalibratedRed(), 2);
    Serial.print("]");
#else   

    Serial.print(sensor.getCalibratedViolet(), 2);
    Serial.print(",");
    Serial.print(sensor.getCalibratedBlue(), 2);
    Serial.print(",");
    Serial.print(sensor.getCalibratedGreen(), 2);
    Serial.print(",");
    Serial.print(sensor.getCalibratedYellow(), 2);
    Serial.print(",");
    Serial.print(sensor.getCalibratedOrange(), 2);
    Serial.print(",");
    Serial.print(sensor.getCalibratedRed(), 2);
    Serial.print(",");
#endif
#endif
  }
  else if (sensor.getVersion() == SENSORTYPE_AS7263)
  {
    //Near IR readings
#ifdef PRINT_RAW
#ifdef NR_VERBOSE
    Serial.print(" Reading (non-calibrated): R[");
    Serial.print(sensor.getR(), 2);
    Serial.print("] S[");
    Serial.print(sensor.getS(), 2);
    Serial.print("] T[");
    Serial.print(sensor.getT(), 2);
    Serial.print("] U[");
    Serial.print(sensor.getU(), 2);
    Serial.print("] V[");
    Serial.print(sensor.getV(), 2);
    Serial.print("] W[");
    Serial.print(sensor.getW(), 2);
    Serial.print("]");
 #else
    Serial.print(sensor.getR(), DEC);
    Serial.print(",");
    Serial.print(sensor.getS(),DEC);
    Serial.print(",");
    Serial.print(sensor.getT(), DEC);
    Serial.print(",");
    Serial.print(sensor.getU(), DEC);
    Serial.print(",");
    Serial.print(sensor.getV(), DEC);
    Serial.print(",");
    Serial.print(sensor.getW(), DEC);
    Serial.print(",,");
 #endif
 #endif

 #ifdef PRINT_CAL
 #ifdef NR_VERBOSE
    Serial.print(" Reading (calibrated): R[");
    Serial.print(sensor.getCalibratedR(), 2);
    Serial.print("] S[");
    Serial.print(sensor.getCalibratedS(), 2);
    Serial.print("] T[");
    Serial.print(sensor.getCalibratedT(), 2);
    Serial.print("] U[");
    Serial.print(sensor.getCalibratedU(), 2);
    Serial.print("] V[");
    Serial.print(sensor.getCalibratedV(), 2);
    Serial.print("] W[");
    Serial.print(sensor.getCalibratedW(), 2);
    Serial.print("]");
 #else
    Serial.print(sensor.getCalibratedR(), DEC);
    Serial.print(",");
    Serial.print(sensor.getCalibratedS(),DEC);
    Serial.print(",");
    Serial.print(sensor.getCalibratedT(), DEC);
    Serial.print(",");
    Serial.print(sensor.getCalibratedU(), DEC);
    Serial.print(",");
    Serial.print(sensor.getCalibratedV(), DEC);
    Serial.print(",");
    Serial.print(sensor.getCalibratedW(), DEC);
    Serial.print(",");
#endif   
#endif
  }
#ifdef NR_VERBOSE
  Serial.print(" tempC[");
#endif  
  Serial.print(sensor.getTemperature(), 1);
#ifdef NR_VERBOSE  
  Serial.print("]");
#endif  
  Serial.println();
}
