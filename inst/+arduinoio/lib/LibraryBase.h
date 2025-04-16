/*
 * Octave arduino library interface
 * Copyright (C) 2018-2022 John Donoghue <john.donoghue@ieee.org>
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
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#ifndef OCTAVE_LIBRARY_BASE_H
#define OCTAVE_LIBRARY_BASE_H

#include <Arduino.h>

#define VERSION_MAJOR 0
#define VERSION_MINOR 12
#define VERSION_PATCH 2

#if defined(ARDUINO_SAM_DUE)
# define OCTAVE_COMMS_PORT SERIAL_PORT_MONITOR
#elif defined(SERIAL_PORT_USBVIRTUAL)
  // sparkfun samed21 dev/mini
# define OCTAVE_COMMS_PORT SERIAL_PORT_USBVIRTUAL
#elif defined(SERIAL_PORT_MONITOR)
# define OCTAVE_COMMS_PORT SERIAL_PORT_MONITOR
#else
# define OCTAVE_COMMS_PORT Serial
#endif

class OctaveLibraryBase
{
public:
  String libName;
  int id;

  virtual void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size);

  // matlab compatability
  virtual void commandHandler(byte cmdID, byte* inputs, unsigned int payload_size);

  virtual void setup();
  virtual void loop();

  const char * getLibraryName() const;

  #define ARDUINO_ERROR       255
  #define ARDUINO_WAIT        254
  #define ARDUINO_DEBUG       253
  void sendResponseMsg(uint8_t cmdID, const uint8_t *data, uint8_t sz);
  void sendResponseMsg_P(uint8_t cmdID, const uint8_t *data PROGMEM, uint8_t sz);

  void sendErrorMsg(const char *msg);
  void sendErrorMsg_P(const char *msg PROGMEM);
  void sendUnknownCmdIDMsg();
  void sendInvalidNumArgsMsg();
  void sendWaitMsg();
  void debugPrint(const char *, ...);
};

typedef OctaveLibraryBase LibraryBase;

class OctaveArduinoClass
{
  uint8_t msg_state;
  uint8_t msg_datapos;
  uint8_t msg_hdr[4];
  uint8_t msg_data[256];

  #define MAX_ARDUINO_LIBS 20
  int libcount;
  OctaveLibraryBase *libs[MAX_ARDUINO_LIBS];
public:
  OctaveArduinoClass();
  uint8_t registerLibrary(LibraryBase *lib);
  int getLibCount() const { return libcount; }
  const char * getLibName(uint8_t idx) const;

  void init();
  void runLoop();
private:
  uint8_t processMessage(uint8_t libid, uint8_t cmd, uint8_t *data, uint8_t sz);
};

// for matlab compatability
typedef OctaveArduinoClass MWArduinoClass;

// error strings
extern const char ERRORMSG_INVALID_NUMBER_OF_ARGS[] PROGMEM;
extern const char ERRORMSG_INVALID_ARGS[] PROGMEM;
extern const char ERRORMSG_INVALID_MODE[] PROGMEM;
extern const char ERRORMSG_INVALID_PIN[] PROGMEM;
extern const char ERRORMSG_UNIMPLEMENTED[] PROGMEM;
extern const char ERRORMSG_INVALID_DEVICE[] PROGMEM;

#endif // OCTAVE_LIBRARY_BASE_H
