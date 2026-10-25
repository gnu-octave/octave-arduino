# raspi pico 2040
# configuration generated from rp2040/hardware/rp2040/6.3.1/variants/rpipico2/pins_arduino.h
function retval = config_raspi_pico2 (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.baudrate = 9600;
  retval.mcu = 'cortex-m0plus';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Raspberry Pi Pico 2';

  # pin config
  retval.pins = {};

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'serial1_tx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'serial1_rx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'spi_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'spi_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'spi_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'spi_ss', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'i2c_sda', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'i2c_scl', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'serial2_tx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'serial2_rx', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi1_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'spi1_ss', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'spi1_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D15', 15, { 'digital', 'spi1_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D16', 16, { 'digital', 'spi0_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D17', 17, { 'digital', 'spi0_ss', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital', 'spi0_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital', 'spi0_mosi', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D20', 20, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D21', 21, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital', 'led', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 26, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 27, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 28, { 'digital', 'analog', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 29, { 'digital', 'analog', 'pwm' });
endfunction
