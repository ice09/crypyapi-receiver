title Payment Process Flow

note over Sender: Preparation Step

Sender->+Receiver: Call {SERVICE_URL}/setup?\nservice={SERVICE_NAME}&address={SENDER_ADDRESS}
note right of Receiver: Create and Return TRX_ID 
Receiver-->-Sender: TRX_ID

note over Sender: Payment Step

note over Sender: Sign TRX_ID

Sender->+Receiver: Call {SERVICE_URL}/function with HTTP Headers \n {CPA-Signed-Identifier} and {CPA-Transaction-Hash}
note right of Receiver: Correlate TRX_ID from transaction\nextra data and Check Signature 
Receiver-->-Sender: Paid Payload
