###### EIP の設定

# EIPを "tabiya-eip-pub-a" という名称で作成

resource "aws_eip" "tabiya_eip_pub_a" {
    # EIPがVPCにあるかどうか
    vpc = true

    tags = {
        Name = "Tabiya-EIP-Pub-A"
    }
}