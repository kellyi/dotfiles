task default: %w[install]

def filtered_files(files)
    files.reject do |f|
        ['.', '..', 'finderdefaults', '.git', '.gitignore', 'Rakefile',
         'README.md', 'LICENSE', 'git-prompt.sh'].include?(f)
    end
end

def create_symlink(file, dir)
    unless File.exist?("#{dir}/#{file}")
        system("ln -s #{Dir.pwd}/#{file} #{dir}/#{file}")
        puts "Installed #{file}"
    else
        puts "#{file} already installed; skipping"
    end
end


task :install do
    system("finderdefaults")
    files = filtered_files(Dir.entries('.')).partition { |f| f[0] == '.' }
    create_symlink('git-prompt.sh', Dir.home)
    files[0].each { |f| create_symlink(f, Dir.home) }
    system("mkdir #{Dir.home}/bin") unless File.exist?(Dir.home + "/bin")
    files[1].each { |f| create_symlink(f, "#{Dir.home}/bin") }
    unless File.exist?("#{Dir.home}/.vim/bundle/Vundle.vim")
        system("git config --global core.editor $(which vim)")
        system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
        system("vim +PluginInstall +qall")
        puts "Installed Vundle"
    else
        puts "Vundle already installed; skipping"
    end
end
