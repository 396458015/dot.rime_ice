# 雾凇拼音设置
## 挂载sogou词库
    1.1 在'Rime'中创建'my_dict'文件夹，将'sogou.dict.yaml'放在这个文件夹中
    1.2 在'rime_ice.dict.yaml'中添加设置，导入sogou词库  
        在import_tables中添加'- my-dicts/sogou'  
        注意，需把扩展词库放在雾凇词库下面,确保有重复词条时,最上面的词库中的权重生效  
    1.3 重新部署  

## 建立自造词库
    自己使用习惯生成的词库在配置路径中的'rime_ice.userdb'文件夹中,为二进制文件,迁移和管理,需要将二进制文件转换为txt文件  
    1.1 修改'installation.yaml'配置文件  
        设置'installation_id'  
        设置'sync_dir'  

 比如:  
     
    installation_id: "thinkpad"  
    sync_dir: 'E:\Github\Pinyin\dot.rime_ice\rime_sync'  
 
    1.2 点击'用户资料同步'  
    1.3 同步路径中生成的'rime_ice.userdb.txt'文件为自己使用习惯生成的词库  

## 管理自造词库
    如果发现自造词库中，有些误打的错词在里面，可以将其删除，方法如下:  
    1.1 打开同步文件夹中的'rime_ice.userdb.txt',将错误的词条删掉  
    1.2 将配置文件夹'rime_ice.userdb'中的文件删除  
    1.3 点击'用户资料同步',完成'rime_ice.userdb.txt'向二进制文件的转化  
    注意: 同步过程对于二进制文件和'rime_ice.userdb.txt'文件是双向的, 如果二进制存在错误词条,而在txt删除错误词条后,同步后txt还是有错误词条.  

## 升级雾凇词库
    可以全覆盖雾凇词库,仅修改'sogou.dict.yaml'中挂在词库的部分，即在import_tables中添加'- my-dicts/sogou'  
    其余设置均为patch方式的补丁,文件覆盖后不影响配置

## 重新安装小狼毫和自造词库迁移
    1. 安装weasel小狼毫  
    2. 安装雾凇拼音  
       将rime-ice文件放置在rime配置文件路径中'C:\Users\ThinkPad\AppData\Roaming\Rime'  
    3. 迁移配置文件  
       3.1 将'default.custom.yaml','installation.yaml'放置在配置文件路径，替换原有文件  
       3.2 修改配置文件中的'rime_ice.dict.yaml'  
           在import_tables中添加'- my-dicts/sogou'  
    4. 同步自造词库  
       4.1 按照'installation.yaml'中synv_dir路径创建文件夹  
       4.2 点击'用户资料同步',同步文件夹中会出现'rime_ice.userdb.txt',可以看到里面没有词库  
       4.3 将已有的自造词库'rime_ice.userdb.txt'中的内容复制到同步文件夹中的'rime_ice.userdb.txt'  
       4.4 再次点击'用户资料同步',同步成功。可以看到配置路径中'rime_ice.userdb'的二进制文件的容量变大了.  
    注意: 完成同步自造词库后,后续更新该词库,点击'用户资料同步'就可以更新同步文件夹中'rime_ice.userdb.txt'文件的更新.  
