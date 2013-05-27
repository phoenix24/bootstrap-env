# install zsh
package "zsh" do
  action :install
end

# make zsh default shell.
bash "make zsh default" do
 code <<-EOH
   sudo chsh -s $(which zsh) csharma
 EOH
end

# install oh-my-zsh plugin!
bash "installing oh-my-zsh!" do
 code <<-EOH
   curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | zsh
 EOH
end

# install dotfiles!
bash "installing dotfiles!" do
 code <<-EOH
   curl -L https://github.com/phoenix24/dotfiles/raw/master/tools/install.sh | zsh
 EOH
end