###### IGW の設定

resource "aws_internet_gateway" "tabiya_igw" {
    vpc_id = aws_vpc.tabiya_vpc.id

    tags = {
        Name    = "Tabiya-IGW"
        Dev     = "Dev-Tag"
    }
}

###### NAT ゲートウェイ の設定

resource "aws_nat_gateway" "tabiya_ngw" {
    allocation_id = aws_eip.tabiya_eip_pub_a.id

    subnet_id = aws_subnet.tabiya_pub_a.id

    tags = {
        Name    = "Tabiya-NGW"
        Dev     = "Dev-Tag"
    }
}