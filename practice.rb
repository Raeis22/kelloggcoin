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
index_1 = 0
for n in blockchain
  to_user_list.push(blockchain[index_1]["to_user"])
  index_1 = index_1 + 1
end
user_list = to_user_list.uniq
# puts user_list

# i need to calculate each users' balance

user_wallets = []

for user in user_list
  each_user_wallet = {"name" => "", "balance" => 0}
  each_user_wallet["name"] = user
  # p each_user_wallet
  user_wallets.push(each_user_wallet)
  # p user_wallets
end

index_2 = 0
for user in user_list
  balance = 0
  index_3 = 0
  for n in blockchain
    if blockchain[index_3]["to_user"] == user
      balance = balance + blockchain[index_3]["amount"]
    elsif blockchain[index_3]["from_user"] == user
      balance = balance - blockchain[index_3]["amount"]
    end
    index_3 = index_3 + 1
  end
  user_wallets[index_2]["balance"] = balance
  index_2 = index_2 + 1
  p user_wallets
end

# p user_wallets

index_4 = 0
for user in user_list
  puts user_wallets[index_4]["name"].capitalize + "'s KelloggCoin balance is " + user_wallets[index_4]["balance"].to_s
  index_4 = index_4 + 1
end