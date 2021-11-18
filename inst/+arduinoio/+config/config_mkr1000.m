# configuration generated from arduino/hardware/samd/1.8.11/variants/mkr1000/variant.h
function retval = config_mkr1000 (initdata)
  retval = {};

  # default board info - must be provided
  # will be filled in on connection.
  retval.board = '';
  retval.mcu = 'cortex-m0plus';
  retval.voltref = 3.3;
  retval.libs = {};
  retval.port = '';

  # info expected to be provided by config.
  retval.description = 'MKR 1000 Board';

  # pin config
  retval.pins = {};
  retval.pins{end+1} = arduinoio.config.pin_info('D0', 0, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D1', 1, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D2', 2, { 'digital', 'i2s_sck', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D3', 3, { 'digital', 'i2s_fs', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D4', 4, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D5', 5, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D6', 6, { 'digital', 'led', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D7', 7, { 'digital', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D8', 8, { 'digital', 'spi_mosi', 'pwm', 'interrupt' });
  retval.pins{end+1} = arduinoio.config.pin_info('D9', 9, { 'digital', 'spi_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D10', 10, { 'digital', 'spi_miso', 'pwm' });
  retval.pins{end+1} = arduinoio.config.pin_info('D11', 11, { 'digital', 'i2c_sda' });
  retval.pins{end+1} = arduinoio.config.pin_info('D12', 12, { 'digital', 'i2c_scl' });
  retval.pins{end+1} = arduinoio.config.pin_info('D13', 13, { 'digital', 'uart1_rx' });
  retval.pins{end+1} = arduinoio.config.pin_info('D14', 14, { 'digital', 'uart1_tx' });
  retval.pins{end+1} = arduinoio.config.pin_info('A0', 15, { 'digital', 'analog', 'dac0' }, {"D15"});
  retval.pins{end+1} = arduinoio.config.pin_info('A1', 16, { 'digital', 'analog', 'interrupt' }, {"D16"});
  retval.pins{end+1} = arduinoio.config.pin_info('A2', 17, { 'digital', 'analog', 'interrupt' }, {"D17"});
  retval.pins{end+1} = arduinoio.config.pin_info('A3', 18, { 'digital', 'analog', 'pwm' }, {"D18"});
  retval.pins{end+1} = arduinoio.config.pin_info('A4', 19, { 'digital', 'analog', 'pwm' }, {"D19"});
  retval.pins{end+1} = arduinoio.config.pin_info('A5', 20, { 'digital', 'analog' }, {"D20"});
  retval.pins{end+1} = arduinoio.config.pin_info('A6', 21, { 'digital', 'analog' }, {"D21"});

  retval.pins{end+1} = arduinoio.config.pin_info('D24', 24, { 'digital', 'spi_ss' });

  # SPI connected to WINC1501B
  retval.pins{end+1} = arduinoio.config.pin_info('D26', 26, { 'digital', 'spi1_mosi' });
  retval.pins{end+1} = arduinoio.config.pin_info('D27', 27, { 'digital', 'spi1_sck' });
  retval.pins{end+1} = arduinoio.config.pin_info('D28', 28, { 'digital', 'spi1_ss' });
  retval.pins{end+1} = arduinoio.config.pin_info('D29', 29, { 'digital', 'spi1_miso' });
endfunction
