# tabiya-vpc は このリソースの名称
resource "aws_vpc" "tabiya_vpc" {

    # ネットワークの範囲を設定
    cidr_block  = "10.0.0.0/16"

    # タグを設定
    tags = {
        # Name は VPC の名前
        Name    = "TabiyaVpc"
        # 任意のタグ項目と値
        Dev     = "Dev-tag"
    }
}