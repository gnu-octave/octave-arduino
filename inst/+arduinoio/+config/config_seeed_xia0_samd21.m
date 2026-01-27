# configuration generated from Seeeduino/hardware/samd/1.8.5/variants/XIAO_m0/variant.h
function retval = config_seeed_xia0_samd21 (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = 'Seed Studio XIA0 SAMD21';
  retval.baudrate = 9600;
  retval.mcu = 'SAMD21G18';
  retval.voltref = 33; # 3.3v
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Seeed Studio XIA0 SAMD21';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'analog' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'analog', 'pwm', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'analog', 'pwm', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'analog', 'pwm', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'analog', 'pwm', 'spi_miso' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'analog', 'pwm', 'spi_mosi' });
  # Leds
  #retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'led_txl' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'led_rxl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led' });
  # USB
  #retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital' });
endfunction

