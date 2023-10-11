# configuration generated from ARDUINO_NANO33BLE/pins_arduino.h
function retval = config_nano_33_ble (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = 'nano_33_ble';
  retval.baudrate = 9600;
  retval.mcu = 'nRF52840';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Nano 33 BLE';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_ss', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led', 'spi_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'analog', 'i2c0_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'analog', 'i2c0_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 20, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 21, { 'digital', 'analog' });

  # I/O tp on board chips
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'interrupt' }); # APDS int
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital' }); # PDM pwr
  retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital' }); # PDM clk
  retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital' }); # PDM din

  retval.pins{end+1} = arduinoio.config.pin_info('D30', 30, { 'i2c1_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D31', 31, { 'i2c1_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D32', 32, { 'digital' }); # enable i2c pullup
  retval.pins{end+1} = arduinoio.config.pin_info('D33', 33, { 'digital' }); # enable i2c 3.3v

endfunction
