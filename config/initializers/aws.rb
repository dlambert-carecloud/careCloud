# CLIENT = Aws::CognitoIdentity::Client.new(
#   access_key_id: ENV["ACCESS_KEY_ID"],
#   secret_access_key: ENV["SECRET_ACCESS_KEY"],
#   region: ENV["AWS_REGION"],
# )

CLIENT = Aws::CognitoIdentity::Client.new({
  access_key_id: ENV["ACCESS_KEY_ID"],
  secret_access_key: ENV["SECRET_ACCESS_KEY"],
  region: ENV["AWS_REGION"],
})

# resp = CLIENT.create_identity_pool(params)
#
# resp = client.admin_create_user({
#   user_pool_id: "us-east-2_7s93WKVaA", # required
#   username: "Test", # required
#   user_attributes: [
#     {
#       name: "valeria protsan", # required
#       value: "valeriya@gmail.com",
#     },
#   ],
#   validation_data: [
#     {
#       name: "Email", # required
#       value: "AttributeValueType",
#     },
#   ],
#   temporary_password: "123456",
#   force_alias_creation: false,
#   message_action: "RESEND", # accepts RESEND, SUPPRESS
#   desired_delivery_mediums: ["EMAIL"], # accepts SMS, EMAIL
# })
