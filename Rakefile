task default: %w[install]

def filtered_files(files)
    files.reject do |f| 
        ['.', '..', 'finderdefaults', '.git', '.gitignore', 'Rakefile', 
         'README.md', 'LICENSE', 'git-prompt.sh'].include?(f)
    end
end

task :install do
    files = filtered_files(Dir.entries('.')).partition { |f| f[0] == '.' }
    system("ln -s #{Dir.pwd}/git-prompt.sh ~/git-prompt.sh") unless File.exist?("#{Dir.home}/git-prompt.sh")
    files[0].each { |f| system("ln -s #{Dir.pwd}/#{f} ~/#{f}") unless File.exist?("#{Dir.home}/#{f}") }
    files[1].each { |f| system("ln -s #{Dir.pwd}/#{f} ~/bin/#{f}") unless File.exist?("#{Dir.home}/bin/#{f}") }
    unless File.exist?("#{Dir.home}/.vim/bundle/Vundle.vim")
        system("git config --global core.editor $(which vim)")
        system("git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim")
        system("vim +PluginInstall +qall")
    end
    system("finderdefaults")
end

