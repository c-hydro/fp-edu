
import logging
import json


def get_input_string(string):

    logging.info(" ===> call 'get_input_string' :-) ")

    string = string.upper()
    return string


def get_input_float(n):

    logging.info(" ===> call 'get_input_float' :-0 ")

    n = n + 5
    return n


def write_outcome(filename, data, indent_char=4):

    logging.info(" ===> call 'write_outcome' ;-) ")

    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=indent_char)
