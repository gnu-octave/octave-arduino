#include "settings.h"
#include "OctaveServoLibrary.h"

#define ARDUINO_SERVO        0
#define ARDUINO_CONFIG_SERVO 1

#ifdef USE_SERVO
  // NOTE: if cant fint servo.h, you probally dont have the Servo library installed
  // go to Sketch -> Include Library -> Manage Libraries, and select 'Servo'
  #include <Servo.h>
  Servo servo[NUM_DIGITAL_PINS];
  uint16_t servo_pos[NUM_DIGITAL_PINS];
#endif

OctaveServoLibrary::OctaveServoLibrary(OctaveArduinoClass &oc) 
{

  libName = "Servo";

  oc.registerLibrary(this);
}
void OctaveServoLibrary::commandHandler(uint8_t cmdID, uint8_t* data, uint8_t datasz)
{
  int val;
    
  switch (cmdID) {
#ifdef USE_SERVO
      case ARDUINO_SERVO:
        if(datasz == 1) {
          uint16_t ms = servo_pos[data[0]];
          data[1] = (ms>>8);
          data[2] = (ms&0xff);
           sendResponseMsg(cmdID,data, 3);
        } else if(datasz == 3) {
          uint16_t ms = ((int)data[1]<<8) | ((int)data[2]);
          servo_pos[data[0]] = ms;
          servo[data[0]].writeMicroseconds(ms);
          sendResponseMsg(cmdID,data, 1);
        } else {
          sendResponseMsg(ARDUINO_ERROR,0,0);
        }
        break;
      case ARDUINO_CONFIG_SERVO:
        if(datasz > 0) {
        // pin
        // conf stuff ... ?

        servo[data[0]].attach(data[0]);
          sendResponseMsg(cmdID,data, 1);
        } else {
          sendResponseMsg(ARDUINO_ERROR,0,0);
        }
        break;
#endif
      default:
        sendResponseMsg(ARDUINO_ERROR,data, 0);
        break;
    }
}
