#ifndef OCTAVE_LIBRARY_BASE_H
#define OCTAVE_LIBRARY_BASE_H

#include <Arduino.h>

class OctaveLibraryBase
{
public:
  String libName;
  int id;

  virtual void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size) = 0;

  #define ARDUINO_ERROR       255
  void sendResponseMsg(uint8_t cmdID, uint8_t *data, uint8_t sz);
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

  void runLoop();
private:
  uint8_t processMessage(uint8_t libid, uint8_t cmd, uint8_t *data, uint8_t sz);
};

// for matlab compatability
typedef OctaveArduinoClass MWArduinoClass;


#endif // OCTAVE_LIBRARY_BASE_H
