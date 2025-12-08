# configuration generated from NANOR4/pins_arduino.h
function retval = config_nano_r4 (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = 'nano_r4';
  retval.baudrate = 9600;
  retval.mcu = 'RA4M1';
  retval.voltref = 50;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Nano R4';

  # pin config
  retval.pins = {};
  #retval.pins{end+1} = arduinoio.config.pin_info('D-1', -1, { 'digital', 'can0_stby' });
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'uart1_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'uart1_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'can0_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'can0_rx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_cs', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog' }, 'd14');
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog' }, 'd15');
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 18, { 'digital', 'analog', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 19, { 'digital', 'analog', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 20, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 21, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'led' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'led_red' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'led_green' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital', 'led_blue' });
endfunction

