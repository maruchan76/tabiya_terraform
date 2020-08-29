###### Public Subnet 用の ルートテーブル

resource "aws_route_table" "tabiya_rtb_pub_a" {
    vpc_id = aws_vpc.tabiya_vpc.id

    route {
        gateway_id  =   aws_internet_gateway.tabiya_igw.id
        cidr_block  =   "0.0.0.0/0"
    }

    tags = {
        Name    =   "Tabiya-Rtb-Pub-A"
        Dev     =   "Dev-Tag"
    }
}

###### パブリックサブネットとルートテーブルを紐付け

resource "aws_route_table_association" "tabiya_rtb_pub_a_an" {
    subnet_id = aws_subnet.tabiya_pub_a.id
    route_table_id = aws_route_table.tabiya_rtb_pub_a.id
}

###### Private Subnet 用の ルートテーブル

resource "aws_route_table" "tabiya_rtb_pri_a" {
    vpc_id = aws_vpc.tabiya_vpc.id

    route {
        nat_gateway_id = aws_nat_gateway.tabiya_ngw.id
        cidr_block = "0.0.0.0/0"
    }

    tags = {
        Name    =   "Tabiya-Rtb-Pri-A"
        Dev     =   "Dev-Tag"
    }
}

###### プライベートサブネットとルートテーブルを紐付け

resource "aws_route_table_association" "tabiya_rtb_pri_a_an" {
    subnet_id = aws_subnet.tabiya_pri_a.id
    route_table_id = aws_route_table.tabiya_rtb_pri_a.id
}