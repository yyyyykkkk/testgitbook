_bookPath=/godata/pipelines/agent1_pipeline1/
cd $_bookPath
gitbook init
gitbook install
gitbook build 

rsync -avz --progress --no-perms --omit-dir-times   /godata/pipelines/agent1_pipeline1/_book/gitbook/ rayjoy@119.28.5.63:/opt/dockerTest/gocdtest/testgitbook/gitbook/ --exclude='.git' --exclude='.DS_Store' --exclude='rsdk_ios_*' --exclude='iOS_*' --exclude='rsdk_iOS_*' --exclude='cruise-output'   -e "ssh -p 10220"

#rsync -avz --progress --no-perms --omit-dir-times  --delete /godata/pipelines/agent1_pipeline1/chapter1/ rayjoy@119.28.5.63:/opt/dockerTest/gocdtest/testgitbook/chapter1/ --exclude='.git' --exclude='.DS_Store' --exclude='rsdk_ios_*' --exclude='iOS_*' --exclude='rsdk_iOS_*' --exclude='cruise-output'   -e "ssh -p 10220"
