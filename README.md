# terraform-aws-s3-backend-resources

This terraform module provisions the resources needed for using the [terraform s3 backend](https://www.terraform.io/docs/backends/types/s3.html).

## Example

```hcl
module "my_backend" {
  source = "git@github.com:AaronNBrock/terraform-aws-s3-backend-resources.git?ref=v0.1.0"
  backend_name = "my-backend-name"
}
```

**Note:** It's best practices to specify `?ref=<git-tag>` at the end of the `source` line.

And the backend definition would be:

```hcl
backend "s3" {
  bucket         = "my-backend-name"
  key            = "default/terraform.tfstate"
  region         = "us-east-1"
  dynamodb_table = "my-backend-name"
  encrypt        = true
}
```

## Spec

## Providers

| Name | Version |
| ---- | ------- |
| aws  | ~> 2.0  |

## Inputs

| Name              | Description                                                                                        | Type     | Default | Required |
| ----------------- | -------------------------------------------------------------------------------------------------- | -------- | ------- | :------: |
| backend_name      | The name used to create both the bucket & the DynamoDB table. (Note: This must be globally unique) | `string` | n/a     |   yes    |
| bucket_mfa_delete | Enable bucket MFA delete.                                                                          | `bool`   | `false` |    no    |
| bucket_versioning | Enable s3 bucket versioning.                                                                       | `bool`   | `true`  |    no    |

## Outputs

No output.
