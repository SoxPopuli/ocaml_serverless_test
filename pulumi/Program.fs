module Program

open Pulumi.FSharp
open Pulumi.Aws.S3
open Pulumi.Aws

let infra () =
    let endpoint = ApiGateway.RestApi("endpoint")
    let resource = ApiGateway.Resource("resource", ApiGateway.ResourceArgs(
        ParentId = endpoint.RootResourceId,
        PathPart = "example",
        RestApi = endpoint.Id
    ))

    let fn =
        Lambda.Function("main", Lambda.FunctionArgs(), Pulumi.CustomResourceOptions())

    // Create an AWS resource (S3 Bucket)
    let bucket = Bucket "my-bucket"

    // Export the name of the bucket
    dict [ ("bucketName", bucket.Id :> obj) ]

[<EntryPoint>]
let main _ = Deployment.run infra
