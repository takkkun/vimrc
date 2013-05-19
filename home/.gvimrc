let config_dirs = ['~/.vim/config/gui']

for config_dir in config_dirs
  for config_path in split(glob(config_dir . '/*.vim'), '\n')
    exe 'source' config_path
  endfor
endfor
