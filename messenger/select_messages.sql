SELECT 
message.id, user1.name as sender, user2.name as receiver,
message.when, message.text
FROM message, user as user1, user as user2
WHERE message.sender_id = user1.id
AND message.receiver_id = user2.id
