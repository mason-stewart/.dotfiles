# Taken and edited from https://github.com/skwp/dotfiles/blob/7079ae14327347ce0fbde303425faaa3089adea7/Rakefile

require 'rake'

desc "Hook our dotfiles into system-standard positions."
task :install => [:submodules] do
  # this has all the linkables from this directory.
  linkables = %w{ackrc gemrc gitconfig ssh/config tmux.conf tmuxinator vim vimrc zsh zshrc}

  skip_all = false
  overwrite_all = false
  backup_all = false

  linkables.each do |linkable|
    source = "#{ENV["PWD"]}/#{linkable}"
    target = "#{ENV["HOME"]}/.#{linkable}"

    puts "--------"
    puts "file:   #{file}"
    puts "source: #{source}"
    puts "target: #{target}"

    if File.exists?(target) || File.symlink?(target)
      unless skip_all || overwrite_all || backup_all
        puts "File already exists: #{target}, what do you want to do? [s]kip, [S]kip all, [o]verwrite, [O]verwrite all, [b]ackup, [B]ackup all"
        case STDIN.gets.chomp
        when 'o' then overwrite = true
        when 'b' then backup = true
        when 'O' then overwrite_all = true
        when 'B' then backup_all = true
        when 'S' then skip_all = true
        end
      end
      FileUtils.rm_rf(target) if overwrite || overwrite_all
      run %{ mv "$HOME/.#{file}" "$HOME/.#{file}.backup" } if backup || backup_all
    end
    run %{ ln -s "#{source}" "#{target}" }
  end
  puts "Dotfiles have been installed. Please restart your terminal and vim."
end

desc "Init and update submodules."
task :submodules do
  sh('git submodule update --init')
end

task :default => 'install'

private
def run(cmd)
  puts
  puts "[Installing] #{cmd}"
  `#{cmd}` unless ENV['DEBUG']
end
