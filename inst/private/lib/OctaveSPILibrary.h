#include "LibraryBase.h"

class OctaveSPILibrary : public LibraryBase
{
public:
   OctaveSPILibrary(OctaveArduinoClass &oc);
   void commandHandler(uint8_t cmdID, uint8_t* inputs, uint8_t payload_size);
};


