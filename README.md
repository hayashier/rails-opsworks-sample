# Update

```bash
bundle exec berks vendor .
```

# Upload

In case GitHub

```bash
git push origin master
```


In case S3

```bash
bundle exec berks package cookbooks.tar.gz
aws s3 cp cookbooks.tar.gz s3://sample-bucket/
```
