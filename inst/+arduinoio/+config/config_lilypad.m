# configuration generated from /usr/share/arduino/hardware/arduino/avr/variants/standard/pins_arduino.h
function retval = config_lilypad (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = '';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'lilypad arduino';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'spi_sck', 'led' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'i2c_sda', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'i2c_scl', 'analog' });
endfunction
