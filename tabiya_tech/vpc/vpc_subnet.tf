###### Webサーバー用 Public Subnet

# ap-northeast-1a AZ に Web サーバー用のサブネットを構築

resource "aws_subnet" "tabiya_pub_a" {
    # サブネットを構築する VPC の ID を指定
    # [vpc.tf]で記述した "tabiya_vpc" VPC を変数で指定
    vpc_id                  = aws_vpc.tabiya_vpc.id

    cidr_block              = "10.0.1.0/24"

    # サブネットを配置する AZ の指定
    availability_zone       = "ap-northeast-1a"

    # このサブネットで起動したインスタンスにパブリック IP を割り当てる
    map_public_ip_on_launch = true

    tags = {
        Name    = "Tabiya-Pub-A"
        Dev     = "Dev-Tag"
    }
}

###### APIサーバー用 Private Subnet

# ap-northeast-1a AZ に API サーバー用のサブネットを構築
resource "aws_subnet" "tabiya_pri_a" {
    vpc_id  = aws_vpc.tabiya_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-1a"

    tags = {
        Name    = "Tabiya-Pri-A"
        Dev     = "Dev-Tag"
    }
}