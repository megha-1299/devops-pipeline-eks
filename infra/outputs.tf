output "cluster_name"       { value = module.eks.cluster_name }
output "cluster_endpoint"   { value = module.eks.cluster_endpoint }
output "cluster_ca"         { value = module.eks.cluster_certificate_authority_data }
output "kubeconfig_file"    { value = module.eks.kubeconfig_filename }

