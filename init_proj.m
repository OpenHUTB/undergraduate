% 初始化工程
% 测试：init_proj('calligraphy_score')
function init_proj(proj_name)

cur_dir = fileparts(mfilename('fullpath'));

home_dir = fileparts(cur_dir);

proj_dir = fullfile(home_dir, proj_name);

if ~exist(proj_dir, 'dir')
    mkdir(proj_dir);
end

cd(proj_dir);

% 创建一个空的README.md文件
fid = fopen('README.md', 'w');
fclose(fid);

system('git init')
system('git add README.md')
system('git submodule add https://github.com/OpenHUTB/undergraduate.git')
system('git commit -m init')

% 添加远程链接
remote_url = ['https://github.com/OpenHUTB/' proj_name '.git'];
system(['git remote add origin ' remote_url])

% 推送到远端
system('git push --set-upstream origin master')

cd(cur_dir);

end





