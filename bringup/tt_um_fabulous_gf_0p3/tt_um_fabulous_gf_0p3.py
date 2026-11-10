# SPDX-FileCopyrightText: © 2026 Leo Moser <leomoser99@gmail.com>
# SPDX-License-Identifier: Apache-2.0

import sys
import time
from machine import Pin
from ttboard.demoboard import DemoBoard, Pins

FRAME_BITS_PER_ROW = 32
MAX_FRAMES_PER_COL = 20
FRAME_SELECT_WIDTH = 5 # hardcoded, should be based on FABRIC_NUM_COLUMNS

BITSTREAM_START = 0xFAB0FAB1
DESYNC_FLAG = 20

NUM_ROWS = 4
NUM_COLUMNS = 6

def send_word(tt, word):
    print(f"send_word: {word}")

    for i in range(32):
        bit = word >> (31-i) & 0x1
        
        # Set the bit, set sample 0
        tt.ui_in.value[0] = 0
        tt.ui_in.value[1] = bit
        
        time.sleep_us(1)
        
        # Set sample 1
        tt.ui_in.value[0] = 1

        time.sleep_us(1)

def clear_bitstream(dut):
    print("Clearing the bitstream...")

    # Header
    send_word(dut, 0xFAB0FAB1)

    for column in reversed(range(NUM_COLUMNS)):
        for frame in reversed(range(MAX_FRAMES_PER_COL)):
            header = (column & 0x1F) << 27 | (1<<frame) & 0xFFFFF
            send_word(dut, header)

            for row in reversed(range(NUM_ROWS)):
                send_word(dut, 0x00000000)
    
    # Desync
    header = 1 << DESYNC_FLAG
    send_word(dut, header)

def upload_bitstream(tt, bitstream_path):
    print(f'Uploading bitstream: {bitstream_path}')
    
    with open(bitstream_path, 'br') as f:
        # Wait for start of bitstream
        while data := f.read(4):
            word = int.from_bytes(data, "big")
            send_word(tt, word)

def main():
    tt = DemoBoard.get()
    
    if not load_project(tt):
        return
    
    tt.uio_oe_pico.value = 0 # all inputs
    tt.ui_in.value = 0
    tt.uio_in.value = 0

    # Set freq to 10MHz (50MHz should be possible)
    tt.clock_project_PWM(10e6)
    
    # The configuration FSM is reset when reset=False
    tt.reset_project(False)
    
    time.sleep_us(1)
    
    # Now the FSM is ready to receive a bitstream
    tt.reset_project(True)
    
    time.sleep_us(1)
    
    upload_bitstream(dut, "all_ones.bit")
    
    time.sleep_us(1)
    
    # Now deassert the reset (FSM is reset, FPGA user design is running)
    tt.reset_project(False)
    
    print("Done!")

"""
>>> import examples.tt_um_fabulous_gf_0p3 as test
>>> test.run()
"""
