/*
 * Copyright (C) 2018 John Donoghue <john.donoghue@ieee.org>
 *
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see
 * <https://www.gnu.org/licenses/>.
 */

#include "LibraryBase.h"
#define MTRV2_INIT        0x00
#define MTRV2_FREE        0x01

#define MTRV2_INIT_STEPPER 0x10
#define MTRV2_FREE_STEPPER 0x11
#define MTRV2_MOVE_STEPPER 0x12
#define MTRV2_RELEASE_STEPPER 0x13

#define MTRV2_INIT_DCMOTOR 0x20
#define MTRV2_FREE_DCMOTOR 0x21
#define MTRV2_START_DCMOTOR 0x22
#define MTRV2_STOP_DCMOTOR 0x23

// must add the adatfruit morotrshieldv2 library to arduino for this to compile
#include <Adafruit_MotorShield.h>

// Create the motor shield object with the default I2C address
//Adafruit_MotorShield AFMS = Adafruit_MotorShield();
// Or, create it with a different I2C address (say for stacking)
// Adafruit_MotorShield AFMS = Adafruit_MotorShield(0x61);

// Select which 'port' M1, M2, M3 or M4. In this case, M1
//Adafruit_DCMotor *myMotor = AFMS.getMotor(0);

class MotorShieldV2Addon : public LibraryBase
{
  Adafruit_MotorShield *AFMS;
  Adafruit_StepperMotor *stepperMotor[2];
  Adafruit_DCMotor *dcMotor[4];
public:
  MotorShieldV2Addon(OctaveArduinoClass& a)
  {
    libName = "adafruit/MotorShieldV2";
    a.registerLibrary(this);
  }
  void init() {
    byte i;

    AFMS = 0;
    for (i=0;i<2;i++) {
      stepperMotor[i] = 0;
    }
    for (i=0;i<4;i++) {
      dcMotor[i] = 0;
    }
    // AFMS.getStepper(200, 2);
    //  myMotor->setSpeed(10);  // 10 rpm
    //   myMotor->step(100, FORWARD, SINGLE);
    //
    //   Adafruit_DCMotor *myMotor = AFMS.getMotor(1);
    //   // turn on motor M1
    //myMotor->setSpeed(200);
    //myMotor->run(RELEASE);
    //
    //   servo1.attach(10);
  }
  void commandHandler(uint8_t cmdId, uint8_t* data, uint8_t datasz)
  {
    switch(cmdId)
    {
      case MTRV2_INIT:
      {
	// send in the address
	// (currently) we only support a single control board
	if(datasz != 3) {
	   sendInvalidNumArgsMsg();
	}
	else {
          // TODO: pwm speed as well
          AFMS = new Adafruit_MotorShield(data[0]); 

          uint16_t freq = data[1];
	  freq = (freq<<8)|data[2];

	  AFMS->begin(freq); // input freq
          sendResponseMsg(cmdId, data, 1);
	}
        break;
      }
      case MTRV2_FREE:
      {
        if(AFMS) {
          //AFMS->release();
	  delete AFMS;
	  AFMS = 0;
	}
        sendResponseMsg(cmdId, data, 1);
        break;
      }
      case MTRV2_INIT_DCMOTOR:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	if(datasz != 2) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 3) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else if(AFMS) {
          dcMotor[data[1]] = AFMS->getMotor(data[1]+1);
	  if(dcMotor[data[1]]) {
	  dcMotor[data[1]]->setSpeed(0);
	  dcMotor[data[1]]->run(FORWARD);
	  dcMotor[data[1]]->run(RELEASE);
          sendResponseMsg(cmdId, data, 2);
	  } else {
	    sendInvalidNumArgsMsg();
	  }
	} else {
	   sendInvalidNumArgsMsg();
	}
	break;
      }
      case MTRV2_FREE_DCMOTOR:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	if(datasz != 2) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 3) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(dcMotor[data[1]]) {
	    //dcMotor[data[1]]->run(RELEASE);
	    dcMotor[data[1]]->setSpeed(0);
	    dcMotor[data[1]]->run(RELEASE);
            dcMotor[data[1]] = 0;
	  }
          sendResponseMsg(cmdId, data, 2);
	}
	break;
      }
      case MTRV2_STOP_DCMOTOR:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	if(datasz != 2) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 3) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(dcMotor[data[1]]) {
	    dcMotor[data[1]]->setSpeed(0);
	    dcMotor[data[1]]->run(RELEASE);
	  }
          sendResponseMsg(cmdId, data, 2);
	}
	break;
      }
      case MTRV2_START_DCMOTOR:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	// 2 = dir 1=forwrf, else reverse
	// 3 = speed (0..255)
	if(datasz != 4) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 3) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(dcMotor[data[1]]) {
	    dcMotor[data[1]]->setSpeed(data[3]);
	    dcMotor[data[1]]->run((data[2] == 1) ? FORWARD : BACKWARD);
            sendResponseMsg(cmdId, data, 2);
	  }
	  else {
	   sendInvalidNumArgsMsg();
	  }
	}
	break;
      }

      case MTRV2_INIT_STEPPER:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	// 2,3 = stepsprerev
	if(datasz != 4) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 1) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else if(AFMS) {
          uint16_t cnt = data[2];
	  cnt = (cnt<<8)|data[3];

          stepperMotor[data[1]] = AFMS->getStepper(cnt, data[1]+1);
	  if(stepperMotor[data[1]]) {
          sendResponseMsg(cmdId, data, 2);
	  } else {
	    sendInvalidNumArgsMsg();
	  }
	} else {
	   sendInvalidNumArgsMsg();
	}
	break;
      }
      case MTRV2_FREE_STEPPER:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	if(datasz != 2) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 1) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(stepperMotor[data[1]]) {
	    //dcMotor[data[1]]->run(RELEASE);
	    stepperMotor[data[1]]->release();
            stepperMotor[data[1]] = 0;
	  }
          sendResponseMsg(cmdId, data, 2);
	}
	break;
      }
      case MTRV2_RELEASE_STEPPER:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	if(datasz != 2) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 1) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(stepperMotor[data[1]]) {
	    stepperMotor[data[1]]->release();
	  }
          sendResponseMsg(cmdId, data, 2);
	}
	break;
      }
      case MTRV2_MOVE_STEPPER:
      { 
	// 0 = shieldid (spiaddress)
	// 1 = motor num
	// 2 = dir 1=forward, else reverse
	// 3,4 uint16 rpm
	// 5,6 steps
	// 7 steptype
	if(datasz != 8) {
	   sendInvalidNumArgsMsg();
	} else if(data[1] > 1) {
           // TODO invalid value
	   sendInvalidNumArgsMsg();
	} else {
          if(stepperMotor[data[1]]) {
	    uint16_t rpm = data[3];
	    rpm = rpm<<8 | data[4];

	    uint16_t steps = data[5];
	    steps = steps<<8 | data[6];

	    uint8_t style = data[7];
	    style = SINGLE;

	    stepperMotor[data[1]]->setSpeed(rpm);
	    stepperMotor[data[1]]->step(steps, (data[2] == 1) ? FORWARD : BACKWARD, style);
            sendResponseMsg(cmdId, data, 2);
	    // TODO: we need way to handle that we had a successful execute, but also let know
	    // that we will be busy for a time (so we dont get a timeout)
	  }
	  else {
	   sendInvalidNumArgsMsg();
	  }
	}
	break;
      }

      default:
      {
        // notify of invalid cmd
        sendUnknownCmdIDMsg();
      }
      break;
    }
  }
};
