import json
from venv import create 
import matplotlib.colors
import os

tokens_file = open('./tokens.json', 'r')
tokens_data = json.loads( tokens_file.read() )
tokens_file.close()

token_list = tokens_data['entities']

parsed_colors = {}

def srgb_from_hex(hex_color, dark=False):
    rgb_color = matplotlib.colors.to_rgba(hex_color)

    obj = {
        'color': {
            'color-space': 'srgb',
            'components': {
                'alpha': str(rgb_color[3]),
                'blue': str(rgb_color[2]),
                'green': str(rgb_color[1]),
                'red': str(rgb_color[0])
            }
        },
        'idiom': 'universal'
    }

    if dark:
        obj['appearances'] = [{
            'appearance': 'luminosity',
            'value': 'dark'
        }]
    
    return obj

def create_and_write_file(filename, content):
    file = open(filename, 'w+')
    file.write(content)
    file.close()

def kebab_to_camel(string):
    words = string.split('-')
    modified_words = [words[0]]
    
    for i in range(1, len(words)):
        modified_words.append( words[i].capitalize() )

    return "".join(modified_words)

for token in token_list:
    if token['category_id'] == 'sys.color.light':
        color_name = kebab_to_camel(token['tags'][3])
        hex_value = token['value']

        if color_name not in parsed_colors:
            parsed_colors[color_name] = { 'colors': [], 'info': { 'author': 'xcode', 'version': 1 } }
        
        parsed_colors[color_name]['colors'].append( srgb_from_hex(hex_value) )

    if token['category_id'] == 'sys.color.dark':
        color_name = kebab_to_camel(token['tags'][3])
        hex_value = token['value']

        if color_name not in parsed_colors:
            parsed_colors[color_name] = { 'colors': [], 'info': { 'author': 'xcode', 'version': 1 } }
        
        parsed_colors[color_name]['colors'].append( srgb_from_hex(hex_value, True) )


# Create file structure
os.mkdir('Material3')

create_and_write_file('./Material3/Contents.json', '''
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
''')

for color in parsed_colors:
    dir_name = 'Material3/' + color + '.colorset'
    os.mkdir(dir_name)

    contents_json = json.dumps(parsed_colors[color])

    create_and_write_file('./' + dir_name + '/Contents.json', contents_json)

