#include "LibraryBase.h"

class OctaveCoreLibrary : public LibraryBase
{
  OctaveArduinoClass &occlass;
public:
   OctaveCoreLibrary(OctaveArduinoClass &oc);
   void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size);
};


