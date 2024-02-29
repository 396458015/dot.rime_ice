# 雾凇拼音设置
## 增加sogou词库
 1.1 在'Rime'中创建'my_dict'文件夹，将'sogou.dict.yaml'放在这个文件夹中
 1.2 在'rime_ice.dict.yaml'中添加设置，导入sogou词库  
     在import_tables中添加'- my-dicts/sogou'  
     注意，需把扩展词库放在雾凇词库下面,确保有重复词条时,最上面的词库中的权重生效  
 1.3 重新部署  

## 管理自己的词库
   自己使用习惯生成的词库在配置路径中的'rime_ice.userdb'文件夹中,为二进制文件,迁移和管理,需要将二进制文件转换为txt文件  
 1.1 修改'installation.yaml'配置文件  
     设置'installation_id'  
     设置'sync_dir'  

 比如:  
     
     installation_id: "thinkpad"  
     sync_dir: 'E:\Github\Pinyin\dot.rime_ice\rime_sync'  
 
 1.2 点击'用户资料同步'  
 1.3 同步路径中生成的'rime_ice.userdb.txt'文件为自己使用习惯生成的词库  

## 升级雾凇词库
    可以全覆盖雾凇词库,仅修改'sogou.dict.yaml'中挂在词库的部分，即在import_tables中添加'- my-dicts/sogou'  
