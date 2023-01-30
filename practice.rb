# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# i need to create a user list
to_user_list = []
index = 0
for n in blockchain
  to_user_list.push(blockchain[index]["to_user"])
  index = index + 1
end
user_list = to_user_list.uniq.sort
puts user_list

# i need to calculate each users' balance
user_wallets = [{"name" => , "balance" =>}]

for user in user_list
  for n in blockchain
    if blockchain["to_user"] == user
      balance = balance + blockchain["amount"]
    elsif blockchain["from_user"] == user
      balance = balance - blockchain["amount"]
    end
  

#