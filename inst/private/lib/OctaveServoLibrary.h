#include "LibraryBase.h"

class OctaveServoLibrary : public LibraryBase
{
public:
   OctaveServoLibrary(OctaveArduinoClass &oc);
   void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size);
};


