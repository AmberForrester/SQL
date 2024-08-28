use JOBZILA

---Inserting Data
INSERT INTO Roles (RoleName)
VALUES 
('Employer'),
('Job Seeker'),
('Admin');

INSERT INTO Users (Username, Email, PasswordHash, FirstName, LastName, RoleId)
VALUES 
('employer1', 'employer1@example.com', 'hashed_password_1', 'John', 'Doe', 1),
('employer2', 'employer2@example.com', 'hashed_password_2', 'Jane', 'Smith', 1),
('seeker1', 'seeker1@example.com', 'hashed_password_3', 'Alice', 'Brown', 2),
('seeker2', 'seeker2@example.com', 'hashed_password_4', 'Bob', 'White', 2),
('admin1', 'admin1@example.com', 'hashed_password_5', 'Eve', 'Black', 3);

INSERT INTO JobCategories (CategoryName)
VALUES 
('Information Technology'),
('Healthcare'),
('Finance'),
('Education'),
('Engineering'),
('Marketing'),
('Sales'),
('Human Resources'),
('Legal'),
('Operations');




INSERT INTO Jobs (UserId, Title, Description, Location, Company, SalaryRange, JobType, ExpiryDate, Status)
VALUES 
(2, 'Software Developer', 'Develop and maintain software applications.', 'New York, NY', 'Tech Corp', '$70,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Network Administrator', 'Manage and support the company’s network infrastructure.', 'San Francisco, CA', 'Net Solutions', '$60,000 - $80,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Data Analyst', 'Analyze and interpret complex data sets.', 'Austin, TX', 'Data Insights', '$55,000 - $75,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Project Manager', 'Lead and manage projects to successful completion.', 'Chicago, IL', 'Global Projects', '$85,000 - $105,000', 'Contract', '2024-12-31', 'Active'),
(2, 'Marketing Coordinator', 'Coordinate marketing campaigns and strategies.', 'Los Angeles, CA', 'Creative Marketing', '$50,000 - $65,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Sales Executive', 'Drive sales and build client relationships.', 'Miami, FL', 'Sales Force', '$60,000 - $75,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'HR Manager', 'Manage human resources and employee relations.', 'Seattle, WA', 'HR Solutions', '$70,000 - $85,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Legal Advisor', 'Provide legal advice and support.', 'Boston, MA', 'Legal Experts', '$80,000 - $100,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Operations Manager', 'Oversee and manage daily operations.', 'Dallas, TX', 'Operations Inc.', '$75,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Mechanical Engineer', 'Design and develop mechanical systems.', 'Houston, TX', 'Engineering Solutions', '$80,000 - $95,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Financial Analyst', 'Provide financial analysis and reporting.', 'New York, NY', 'Finance Corp', '$70,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Medical Assistant', 'Assist with clinical and administrative tasks in a medical office.', 'San Francisco, CA', 'Health Clinic', '$35,000 - $50,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Nurse', 'Provide patient care and support.', 'Austin, TX', 'Healthcare Services', '$55,000 - $70,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Teacher', 'Teach and mentor students in various subjects.', 'Chicago, IL', 'Education Institute', '$45,000 - $60,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Mechanical Engineer', 'Design and develop mechanical systems.', 'Los Angeles, CA', 'Engineering Solutions', '$80,000 - $95,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Marketing Manager', 'Develop and implement marketing strategies.', 'Miami, FL', 'Marketing Agency', '$70,000 - $85,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Sales Manager', 'Lead and manage the sales team.', 'Seattle, WA', 'Sales Solutions', '$85,000 - $100,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'HR Specialist', 'Support HR functions and employee relations.', 'Boston, MA', 'HR Solutions', '$50,000 - $65,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Legal Secretary', 'Provide administrative support to legal professionals.', 'Dallas, TX', 'Legal Firm', '$40,000 - $55,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Operations Coordinator', 'Coordinate and manage operational tasks.', 'Houston, TX', 'Operations Inc.', '$45,000 - $60,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Software Engineer', 'Develop software solutions for our clients.', 'Austin, TX', 'Software Hub', '$75,000 - $95,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Graphic Designer', 'Create visual concepts to communicate ideas that inspire, inform, and captivate consumers.', 'Los Angeles, CA', 'Design Studio', '$50,000 - $65,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Content Writer', 'Develop content for blogs, articles, product descriptions, and social media.', 'Chicago, IL', 'Content Creators Inc.', '$40,000 - $55,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'SEO Specialist', 'Optimize website content for search engines to improve rankings.', 'Austin, TX', 'SEO Experts', '$55,000 - $70,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Digital Marketing Manager', 'Plan and execute digital marketing campaigns.', 'New York, NY', 'Marketing Pros', '$70,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Customer Support Representative', 'Provide excellent customer service and support.', 'San Francisco, CA', 'Support Solutions', '$35,000 - $50,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Data Scientist', 'Analyze large amounts of data to provide actionable insights.', 'Boston, MA', 'Data Innovators', '$90,000 - $120,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Machine Learning Engineer', 'Develop and implement machine learning models.', 'Seattle, WA', 'AI Solutions', '$100,000 - $130,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Cloud Architect', 'Design and implement cloud computing solutions.', 'Houston, TX', 'CloudTech', '$110,000 - $140,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Cybersecurity Analyst', 'Protect systems and networks from cyber threats.', 'Dallas, TX', 'Security Experts', '$85,000 - $105,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'DevOps Engineer', 'Manage and improve development operations processes.', 'Austin, TX', 'DevOps Hub', '$95,000 - $115,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Account Manager', 'Manage client accounts and relationships.', 'Miami, FL', 'Client Relations', '$60,000 - $80,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'UI/UX Designer', 'Design user interfaces and improve user experiences.', 'New York, NY', 'Design Experts', '$70,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Web Developer', 'Develop and maintain websites and web applications.', 'Los Angeles, CA', 'Web Solutions', '$75,000 - $95,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Systems Administrator', 'Manage and maintain IT systems and infrastructure.', 'Chicago, IL', 'Tech Services', '$65,000 - $85,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Technical Support Engineer', 'Provide technical support and troubleshooting assistance.', 'San Francisco, CA', 'Support Services', '$55,000 - $75,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Product Manager', 'Lead product development and strategy.', 'Austin, TX', 'Product Innovators', '$85,000 - $110,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Business Analyst', 'Analyze business processes and systems to improve efficiency.', 'Boston, MA', 'Business Solutions', '$70,000 - $90,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'HR Generalist', 'Manage HR functions such as recruitment, onboarding, and employee relations.', 'Seattle, WA', 'HR Pros', '$60,000 - $75,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Operations Analyst', 'Analyze operational data to improve efficiency.', 'Houston, TX', 'Operational Excellence', '$65,000 - $85,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Legal Consultant', 'Provide legal advice and consultancy services.', 'Dallas, TX', 'Legal Solutions', '$80,000 - $100,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Social Media Manager', 'Manage social media accounts and create engaging content.', 'Miami, FL', 'Social Media Pros', '$55,000 - $70,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Recruitment Specialist', 'Handle recruitment processes and attract top talent.', 'New York, NY', 'HR Talent', '$60,000 - $80,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Mobile App Developer', 'Develop and maintain mobile applications.', 'San Francisco, CA', 'App Innovators', '$90,000 - $110,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'Database Administrator', 'Manage and maintain the company’s databases.', 'Chicago, IL', 'Data Systems', '$80,000 - $100,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'IT Support Specialist', 'Provide IT support and resolve technical issues.', 'Austin, TX', 'Tech Support Hub', '$50,000 - $65,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Sales Coordinator', 'Support the sales team with administrative tasks and customer relations.', 'Los Angeles, CA', 'Sales Support Co.', '$45,000 - $60,000', 'Full-time', '2024-12-31', 'Active'),
(2, 'Event Planner', 'Organize and manage corporate and social events.', 'Boston, MA', 'Event Masters', '$50,000 - $70,000', 'Full-time', '2024-12-31', 'Active'),
(3, 'QA Engineer', 'Test and ensure the quality of software products.', 'Seattle, WA', 'Quality Assurance Inc.', '$70,000 - $85,000', 'Full-time', '2024-12-31', 'Active');


-- Assuming the 50 jobs are distributed across 10 categories
INSERT INTO JobCategoryMappings (JobId, CategoryId)
VALUES
(2, 1), (2, 1), (3, 1), (4, 1), (5, 6),
(6, 7), (7, 8), (8, 9), (9, 10), (10, 5),
(11, 3), (12, 2), (13, 2), (14, 4), (15, 5),
(16, 6), (17, 7), (18, 8), (19, 9), (20, 10),
(21, 3), (22, 2), (23, 2), (24, 4), (25, 5),
(26, 6), (27, 7), (28, 8), (29, 9), (30, 10),
(31, 1), (32, 1), (33, 1), (34, 1), (35, 5),
(36, 6), (37, 7), (38, 8), (39, 9), (40, 10),
(41, 3), (42, 2), (43, 2), (44, 4), (45, 5),
(46, 6), (47, 7), (48, 8), (49, 9), (50, 10);


INSERT INTO Applications (JobId, UserId, CoverLetter, ResumePath, Status)
VALUES
(2, 3, 'I am interested in the Software Developer position. I have 5 years of experience in software development.', '/resumes/seeker1_resume.pdf', 'Submitted'),
(2, 3, 'I am skilled in network administration and would love to work at Net Solutions.', '/resumes/seeker1_resume.pdf', 'Submitted'),
(3, 4, 'Data analysis is my passion, and I am excited to apply for this role.', '/resumes/seeker2_resume.pdf', 'Submitted'),
(4, 4, 'As a certified Project Manager, I am confident I can lead your projects to success.', '/resumes/seeker2_resume.pdf', 'Submitted');
-- Add additional application entries as needed.


INSERT INTO UserProfiles (UserId, PhoneNumber, Address, ResumePath, LinkedInProfile, ProfileSummary)
VALUES
(3, '555-1234', '123 Main St, New York, NY', '/resumes/seeker1_resume.pdf', 'https://www.linkedin.com/in/seeker1', 'Experienced software developer with expertise in multiple programming languages.'),
(4, '555-5678', '456 Elm St, San Francisco, CA', '/resumes/seeker2_resume.pdf', 'https://www.linkedin.com/in/seeker2', 'Project manager with a proven track record of successfully leading teams.');
-- Add additional user profile entries as needed.