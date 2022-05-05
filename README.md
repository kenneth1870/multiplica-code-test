##### Prerequisites

The setups steps expect following tools installed on the system.

- Docker
- Ruby [2.6.3](https://github.com/organization/project-name/blob/master/.ruby-version#L1)


##### 1. Check out the repository

```bash
git clone https://github.com/kenneth1870/multiplica-code-test.git
```

##### 2. Install libraries 

```bash
bundle install
```

##### 3. Run the code or use docker

```ruby
ruby app.rb
================================================================

docker build -t app . > tmp/log.txt 
docker run -t app . > tmp/output.txt 

```

##### 4. Run the test suite

```ruby
rspec spec
```
