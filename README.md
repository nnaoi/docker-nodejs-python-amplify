AWS Amplify + AppSync + lambda(Python) + React のための開発環境。 

# 使い方
1. `Dockerfile` をアプリのプロジェクトルートに置いて、カレントディレクトリもそこに移動して以下を実行。
```
docker build -t amplifyapp:1.0 ./
```  
amplifyapp の部分は名前。なんでもいい。  
1.0 の部分はバージョン。なんでもいい。  

2. 下記コマンド実行
``` 
docker run -it --name amplifyapp1 -p 3000:3000 -v $PWD:/usr/src/app amplifyapp:1.0
```

コンソールにいつものアプリ起動したぜっていうのが出るから、
http://localhost:3000/  
にアクセスするとつながるはず

# base
https://hub.docker.com/r/nikolaik/python-nodejs
