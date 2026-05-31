#!/bin/bash
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
jekyll serve --port 4000 --config _config.yml,_config_local.yml
