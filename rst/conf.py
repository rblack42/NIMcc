# -*- coding: utf-8 -*-
#
# Path setup ------------------------------

import os
import sys
sys.path.insert(0, os.path.abspath('.'))
import cloud_sptheme as csp

project = 'NIMcc'
copyright = '2020, Roie R. Black'
author = 'Roie R. Black'

version = ''
release = 'spring2020'

extensions = [
]

templates_path = ['_templates']
source_suffix = '.rst'
master_doc = 'index'
language = None

exclude_patterns = [
        '_build',
        'Thumbs.db',
        '.DS_Store',
        '_unpublished']

pygments_style = 'sphinx'

# -- Options for HTML output -----------------------------------------

html_theme = 'cloud'
html_theme_path = [csp.get_theme_dir()]
html_theme_options = { "roottarget": "index" }
html_static_path = ['_static']
html_logo = '_static/images/ACClogo.png'
html_favicon = '_static/images/favicon.ico'
# html_theme_options = {}
html_static_path = ['_static']
# html_sidebars = {}

# -- Options for LaTeX output ----------------------------------------

latex_elements = {
    'papersize': 'letterpaper',
    'pointsize': '12pt',
    'preamble': '',
    'figure_align': 'htbp',
}

latex_documents = [
    (master_doc, 'nimcc.tex', 'NIMcc',
     'Roie R. Black', 'manual'),
]
