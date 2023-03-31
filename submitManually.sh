
# Prevent duplicate tags


#获取podspec文件名称

packageDIR=`pwd`
podName=${packageDIR##*/}
podspecFile=${podName}'.podspec'
echo "podName ----->"${podName}
echo 'COMMIT-podspec-FILE'
sourceRepo='https://github.com/zitao0206/MDSpecs.git'
sourceRepoName='MDSpecs'
version=`git describe --abbrev=0 --tags 2>/dev/null`
cd ..
specsDir=`pwd`/${sourceRepoName}/
echo "specsdir ---->"$specsDir
if [ -d $specsDir ];
then
cd $specsDir
git pull
else
git clone $sourceRepo
cd $specsDir
fi
echo 'FILE-PATH:'
echo ${specsDir}${podName}/${version}
echo $packageDIR/${podspecFile}
mkdir -p  ${specsDir}${podName}/${version}
echo ${specsDir}${podName}/${version}/${podspecFile}
cp $packageDIR/${podspecFile} ${specsDir}${podName}/${version}
echo '文件copy'
destSource='"'${version}'"'
sed -i ''  's/= smart_version/= '${destSource}'/g' ${specsDir}${podName}/${version}/${podspecFile}
echo 'Replace version number'

nowDIR=`pwd`
echo 'nowDIR->' ${nowDIR}

git status
git add .
git commit -m "[Add] ${podName} (${version})"
git push

cd ..
rm -rf specs
