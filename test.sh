#!/bin/bash -ex

gdb --args build/cli/translate --device auto --model /home/scotfang/models/transformer-ende-wmt-pyOnmt/ende_ctranslate2/ \
    --src "./test_inputs.txt"
