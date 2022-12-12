module "karpenter-crds" {
  source  = "rpadovani/helm-crds/kubectl"
  version = "0.2.0"
  
  crds_urls = [
    "https://raw.githubusercontent.com/aws/karpenter/v${var.chart_version}/pkg/apis/crds/karpenter.sh_provisioners.yaml"
    "https://raw.githubusercontent.com/aws/karpenter/v${var.chart_version}/pkg/apis/crds/karpenter.k8s.aws_awsnodetemplates.yaml"
  ]
}
