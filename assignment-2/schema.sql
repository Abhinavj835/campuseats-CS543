CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255)
);

CREATE TABLE FoodItems (
    ItemID INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2),
    available BOOLEAN
);

CREATE TABLE CartItems (
    cartItemId INT PRIMARY KEY,
    cartId INT,
    itemId INT,
    quantity INT,
    FOREIGN KEY (itemId) REFERENCES FoodItems(ItemID)
);

CREATE TABLE Orders (
    orderId INT PRIMARY KEY,
    customerId INT,
    totalPrice DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (customerId) REFERENCES Users(UserID)
);

CREATE TABLE OrderItems (
    orderItemId INT PRIMARY KEY,
    orderId INT,
    itemId INT,
    quantity INT,
    FOREIGN KEY (orderId) REFERENCES Orders(orderId),
    FOREIGN KEY (itemId) REFERENCES FoodItems(ItemID)
);

CREATE TABLE Reviews (
    reviewId INT PRIMARY KEY,
    customerId INT,
    itemId INT,
    rating INT,
    comment VARCHAR(500),
    FOREIGN KEY (customerId) REFERENCES Users(UserID),
    FOREIGN KEY (itemId) REFERENCES FoodItems(ItemID)
);