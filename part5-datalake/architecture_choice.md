### Architecture Recommendation

I would recommend a Data Lakehouse for the food delivery startup because it combines the advantages of both a Data Lake and a Data Warehouse.

First, the startup collects different types of data such as GPS location logs, customer text reviews, payment transactions, and restaurant menu images. A Data Lakehouse can store structured data like payment transactions, semi-structured data like reviews, and unstructured data like images in one system.

Second, it supports both analytics and machine learning. Payment data can be used for business reports, while text reviews and GPS data can help improve delivery prediction and customer recommendations.

Third, it is highly scalable for a fast-growing startup. As data volume increases daily, the system can handle large amounts of information without frequent redesign.

A traditional Data Warehouse mainly works well for structured reporting data but is less suitable for images and text reviews. A Data Lake stores all raw formats but does not always provide strong analytical performance.

Therefore, a Data Lakehouse is the best choice because it provides flexible storage, strong query capability, and support for future AI applications in one architecture.

Furthermore, the Data Lakehouse architecture is more cost-effective for a startup. Instead of paying for two separate systems—a Data Lake for storage and a Warehouse for analytics—the startup can maintain a single environment. This reduces the complexity of 'Data Movement' (ETL), which often introduces errors and latency. By implementing a unified security layer across this architecture, the startup ensures that sensitive customer payment information is protected while still allowing data scientists to access raw GPS logs for route optimization. This balance of security, cost, and flexibility makes the Lakehouse the most sustainable long-term solution.

Data governance and Security

​1. Access Control (RBAC)
​To protect sensitive delivery and customer data, we will implement Role-Based Access Control (RBAC). This ensures that only authorized users can access specific layers of the Data Lakehouse. For example, Data Scientists may have access to raw GPS logs in the Bronze layer for model training, while Business Analysts only access the aggregated sales data in the Gold layer. This "least privilege" approach minimizes the risk of accidental data exposure or deletion.

​2. End-to-End Encryption
​Security will be maintained through robust encryption standards. All data will be encrypted at rest using AES-256 within the cloud storage buckets to prevent unauthorized physical access. Additionally, all data moving between the MongoDB source and the Lakehouse will be encrypted in transit using TLS 1.3. This creates a secure pipeline that protects payment transactions and personal user reviews from potential interceptions.

​3. Data Lineage and Auditing
​Finally, we will implement comprehensive data lineage and auditing. Data Lineage allows us to track the flow of information from its raw state to the final analytical reports, ensuring data quality and making it easier to debug errors. Audit Logs will record every access and modification made to the datasets, providing a clear trail for regulatory compliance and internal security reviews.