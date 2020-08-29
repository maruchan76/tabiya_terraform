resource "aws_security_group" "tabiya_pub_sg" {
    name = "tabiya_sg_pub_a"
    vpc_id = aws_vpc.tabiya_vpc.id

    tags = {
        Name    = "Tabiya-Pub-SG"
        Dev     = "Dev-Tag"
    }
}

resource "aws_security_group_rule" "tabiya_egress_pub_sg" {
    type = "egress"
    from_port = 0
    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.tabiya_pub_sg.id
}

resource "aws_security_group_rule" "tabiya_ingress_sg_pub_22" {
    type = "ingress"
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["126.54.176.130/32"]
    security_group_id = aws_security_group.tabiya_pub_sg.id
}

resource "aws_security_group_rule" "tabiya_ingress_sg_pub_80" {
    type = "ingress"
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["126.54.176.130/32"]
    security_group_id = aws_security_group.tabiya_pub_sg.id
}

#####

resource "aws_security_group" "tabiya_pri_sg" {
    name = "tabiya_sg_pri_a"
    vpc_id = aws_vpc.tabiya_vpc.id

    tags = {
        Name    = "Tabiya-Pri-SG"
        Dev     = "Dev-Tag"
    }
}

resource "aws_security_group_rule" "tabiya_egress_pri_sg" {
    type = "egress"
    from_port = 0
    to_port = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
    security_group_id = aws_security_group.tabiya_pri_sg.id
}

resource "aws_security_group_rule" "tabiya_ingress_sg_pri_22" {
    type = "ingress"
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["10.0.1.0/24"]
    security_group_id = aws_security_group.tabiya_pri_sg.id
}