# configuration generated from mbed_nano/2.4.1/variants/NANO_RP2040_CONNECT/pins_arduino.h
function retval = config_nano_rp2040_connect (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = 'cortex-m0plus';
  retval.voltref = 0;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'Arduino Nano RP2040 Connect';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'uart_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'uart_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_ss', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'spi_mosi', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'spi_miso', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'led', 'spi_sck', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 14, { 'digital', 'analog', 'pwm', 'interrupt' }, {'D14'});
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 15, { 'digital', 'analog', 'pwm', 'interrupt' }, {'D15'});
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 16, { 'digital', 'analog', 'pwm', 'interrupt' }, {'D16'});
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 17, { 'digital', 'analog', 'pwm', 'interrupt' }, {'D17'});
  retval.pins{end+1} = arduinoio.config.pin_info('D18', 18, { 'digital', 'i2c_sda', 'analog' }, {'A4'});
  retval.pins{end+1} = arduinoio.config.pin_info('D19', 19, { 'digital', 'i2c_scl', 'analog' }, {'A5'});
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 20, { 'analog' }, {'D20'});
  retval.pins{end+1} = arduinoio.config.pin_info('A7', 21, { 'analog' }, {'D21'});
  #retval.pins{end+1} = arduinoio.config.pin_info('D22', 22, { 'digital', 'pdm_din', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D23', 23, { 'digital', 'pdm_clk', 'pwm', 'interrupt' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D25', 25, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital' });
  #retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital' });
endfunction
