var data = {
  "shops": [
    {
      "shopId": "shopId1",
      "name": "Shop A",
      "location": "Location A",
      "users": [
        {
          "userId": "userId1",
          "name": "John Doe",
          "mobile": "123-456-7890",
          "car_brand": "Toyota",
          "car_model": "Corolla",
          "total_amount": 5000,
          "pending_amount": 1500,
          "received_amount": 3500,
          "car_accessories_images": ["url1", "url2", "url3"],
          "date": "2024-07-08T00:00:00Z"
        },
        {
          "userId": "userId2",
          "name": "Jane Smith",
          "mobile": "987-654-3210",
          "car_brand": "Honda",
          "car_model": "Civic",
          "total_amount": 4500,
          "pending_amount": 2000,
          "received_amount": 2500,
          "car_accessories_images": ["url4", "url5"],
          "date": "2024-07-08T00:00:00Z"
        }
      ],
      "enquiries": [
        {
          "enquiryId": "enquiryId1",
          "userId": "userId1",
          "customer_name": "John Doe",
          "mobile": "123-456-7890",
          "location": "Location A",
          "date": "2024-07-08T00:00:00Z",
          "message": "Enquiry message",
          "status": "pending"
        },
        {
          "enquiryId": "enquiryId2",
          "userId": "userId2",
          "customer_name": "Jane Smith",
          "mobile": "987-654-3210",
          "location": "Location B",
          "date": "2024-07-08T00:00:00Z",
          "message": "Another enquiry message",
          "status": "resolved"
        }
      ]
    },
    {
      "shopId": "shopId2",
      "name": "Shop B",
      "location": "Location B",
      "users": [
        {
          "userId": "userId3",
          "name": "Alice Johnson",
          "mobile": "555-666-7777",
          "car_brand": "Ford",
          "car_model": "Focus",
          "total_amount": 6000,
          "pending_amount": 1000,
          "received_amount": 5000,
          "car_accessories_images": ["url6", "url7"],
          "date": "2024-07-08T00:00:00Z"
        }
      ],
      "enquiries": [
        {
          "enquiryId": "enquiryId3",
          "userId": "userId3",
          "customer_name": "Alice Johnson",
          "mobile": "555-666-7777",
          "location": "Location C",
          "date": "2024-07-08T00:00:00Z",
          "message": "Shop-level enquiry",
          "status": "pending"
        }
      ]
    }
  ]
};
