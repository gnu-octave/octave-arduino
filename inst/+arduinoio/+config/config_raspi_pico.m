# raspi pico 2040
# configuration generated from mbed_rp2040/2.2.0/variants/RASPBERRY_PI_PICO/pins_arduino.h
function retval = config_raspi_pico (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = 'cortex-m0plus';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Raspberry Pi Pico';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'spi_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'spi_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital','led' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 26, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 27, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 28, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 29, { 'digital', 'analog' });
endfunction
