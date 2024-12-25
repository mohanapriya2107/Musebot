use museum;
ALTER TABLE Museums
MODIFY COLUMN `Name` VARCHAR(80) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Category` VARCHAR(41) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Location` VARCHAR(22) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Opening_hours` VARCHAR(68) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Holidays` VARCHAR(32) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Required_Time` VARCHAR(7) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Description` VARCHAR(494) CHARACTER SET utf8mb4;
INSERT INTO `Museums` VALUES (1,'National Gallery of Modern Art','Arts','New Delhi','10:00 AM -  5:00 PM','Monday and Public Holidays','2 hours','The National Gallery of Modern Art (NGMA) is a premier art museum showcasing modern and contemporary Indian art. With a collection of over 1,500 artworks, the museum features paintings, sculptures, and photographs by renowned Indian artists. Located in Jaipur House, New Delhi, the NGMA is a must-visit destination for art enthusiasts.'),
	(2,'National Gallery of Modern Art','Arts','Banglore','11:00 AM - 6:30 PM','Monday and Public Holidays','2 hours','The National Gallery of Modern Art (NGMA) in Bangalore is a premier art museum showcasing modern and contemporary Indian art. The museum features a collection of over 18,000 artworks, including paintings, sculptures, and prints by renowned Indian artists. Located in the Manikyavelu Mansion, Bangalore, the NGMA is a cultural hub promoting art appreciation and education.'),
	(3,'Academy of Fine Arts','Arts','Kolkata','10:00 AM - 05:00 PM','Opens Daily','2 hours','The Academy of Fine Arts in Kolkata is a premier art institution and museum showcasing a diverse collection of Indian art. The museum features a range of artworks, including paintings, sculptures, and prints by Indian masters. Established in 1933, the Academy of Fine Arts is a hub for art appreciation, education, and cultural exchange.'),
	(4,'Birla Academy of Fine Art and Culture','Arts','Kolkata','3:00 PM - 8:00 PM','Monday and public holidays','3 hours','The Birla Academy of Fine Art and Culture in Kolkata is a renowned institution showcasing Indian art, culture, and heritage. The museum features a diverse collection of paintings, sculptures, and artifacts, including works by Indian masters. Established in 1963, the academy promotes art education, cultural exchange, and research.'),
	(5,'Sri Chitra Art Gallery','Arts','Thiruvananthapuram','10:00 AM - 5:00 PM','Monday and public holidays','2 hours','The Sri Chitra Art Gallery in Thiruvananthapuram, Kerala, is a premier art museum showcasing a diverse collection of Indian and international art. The museum features paintings, sculptures, and artifacts from the 12th to the 20th centuries, including works by Raja Ravi Varma. Established in 1935, the gallery is a treasure trove of Indian art and culture.'),
	(6,'Salar Jung Museum','Arts,Historical Museums, Museum-house','Hyderabad','10:00 AM to 5:00 PM','Friday and public holidays','3 hours','The Salar Jung Museum in Hyderabad, India, is one of the largest and most renowned museums in the country, showcasing a vast collection of art and artifacts from around the world. The museum features over 43,000 objects, including paintings, sculptures, textiles, and antiquities from ancient civilizations. Established in 1951, the museum is a testament to the cultural and artistic heritage of India and the world.'),
	(7,'Kerala Folklore Museum ','Arts','Kochi','9:00 AM to 6:00 PM','Opens Daily','2 hours','The Kerala Folklore Museum in Kochi, Kerala, is a unique museum showcasing the state''s rich cultural heritage and folk traditions. The museum features a vast collection of artifacts, including masks, costumes, and musical instruments, highlighting Kerala''s diverse folk art forms. Established in 2009, the museum aims to preserve and promote Kerala''s intangible cultural heritage.'),
	(8,'Gandhi Smriti','Historical Museums','New Delhi','10:00 AM to 5:00 PM','Monday and public holidays','2 hours','Gandhi Smriti is a museum in New Delhi, India, dedicated to Mahatma Gandhi''s life and legacy. The museum is located in the house where Gandhi spent his last 144 days, and features his preserved room and prayer ground. It serves as a poignant reminder of Gandhi''s philosophy and his ultimate sacrifice.'),
	(9,' Victoria Memorial Hall','Historical Museums','Kolkata','10:00 AM to 6:00 PM ','Monday and public holidays','3 hours','Victoria Memorial Hall is a majestic museum in Kolkata, India, built in memory of Queen Victoria. The hall showcases a vast collection of artifacts, paintings, and memorabilia from the British Raj era. Its stunning architecture and beautiful gardens make it a popular tourist destination and a symbol of Kolkata''s rich history.'),
	(10,'Partition Museum','Historical Museums','Amritsar, Punjab','10:00 AM to 6:00 PM ','Monday and public holidays','2 hours','The Partition Museum in Amritsar, India, is a tribute to the victims of the 1947 Partition of India. The museum showcases personal stories, artifacts, and documents highlighting the trauma, struggles, and resilience of those affected. It serves as a poignant reminder of one of the most significant events in Indian history.'),
	(11,'Chhatrapati Shivaji Maharaj Vastu Sangrahalaya (formerly Prince of Wales Museum)','Historical Museums','Mumbai, Maharashtra','10:15 AM to 6:00 PM','Public holidays','3 hours','Chhatrapati Shivaji Maharaj Vastu Sangrahalaya in Mumbai, India, is one of the country''s premier art and cultural institutions. The museum showcases a vast collection of Indian artifacts, including sculptures, paintings, and decorative arts. Its Indo-Saracenic architecture and beautiful gardens make it a popular cultural destination.'),
	(12,'Indian Museum','Historical Museums, Archeological Museums','Kolkata','10:00 AM to 6:00 PM ','Monday and public holidays','3 hours','The Indian Museum in Kolkata, India, is the country''s oldest and largest museum, showcasing India''s rich cultural heritage. Established in 1814, the museum features a vast collection of artifacts, including sculptures, paintings, and antiquities. Its galleries cover a wide range of subjects, including archaeology, anthropology, geology, and art.'),
	(13,'National Museum','Historical Museums, Archeological Museums','New Delhi','10:00 AM to 6:00 PM ','Monday and public holidays','3 hours','The National Museum in New Delhi, India, is one of the country''s premier cultural institutions, showcasing India''s rich history and heritage. Established in 1949, the museum features a vast collection of artifacts, including sculptures, paintings, and antiquities. Its galleries cover a wide range of subjects, including archaeology, anthropology, art, and numismatics.'),
	(14,'City Palace Museum','Historical Museums','Rajasthan','9:30 AM to 5:30 PM','Opens Daily','3 hours','The City Palace Museum in Udaipur, India, is a majestic palace-turned-museum showcasing the rich history of the Mewar dynasty. The museum features a vast collection of artifacts, including paintings, sculptures, and royal memorabilia. Its ornate architecture and beautiful gardens make it a popular tourist destination.'),
	(15,'Jaisalmer War Museum','Historical Museums','Rajasthan','10:00 AM to 6:00 PM ','Opens Daily','2 hours','The Jaisalmer War Museum in Jaisalmer, India, is a military museum showcasing the history and bravery of the Indian Army. Established in 2015, the museum honors the sacrifices and achievements of Indian soldiers, particularly those from the desert region. The museum features exhibits, artifacts, and audio-visual displays highlighting India''s military history and the role of the Indian Army in protecting the nation.'),
	(16,' Tribal Museum','Historical Museums','Bhopal','12:00 PM to 8:00 PM','Monday and public holidays','3 hours','The Tribal Museum, also known as the Museum of Man, is an anthropological museum showcasing the art, culture, and traditions of India''s tribal communities. The museum features a vast collection of artifacts, including tribal costumes, jewelry, and crafts. Its exhibits provide a glimpse into the lives and customs of India''s diverse tribal populations.'),
	(17,'Heritage Transport Museum','Historical Museums','Haryana','10:00 AM to 7:00 PM','Monday and public holidays','2 hours','The Heritage Transport Museum in Taoru, Haryana, is India''s first comprehensive transport museum showcasing the country''s rich transportation heritage. The museum features a vast collection of vintage cars, buses, trucks, and other vehicles, as well as exhibits on Indian railways and aviation. Its interactive exhibits and restored vehicles provide a unique glimpse into India''s transportation history.'),
	(18,'DakshinaChitra Museum','Historical Museums','Tamil Nadu','10:00 AM to 6:00 PM ','Tuesday and Diwali','3 hours','DakshinaChitra Museum in Chennai, Tamil Nadu, is a unique outdoor museum showcasing the art, architecture, and culture of South India. The museum features authentic reconstructions of traditional homes and villages from Tamil Nadu, Kerala, Karnataka, and Andhra Pradesh. Its exhibits provide a glimpse into the region''s rich cultural heritage and traditional ways of life.'),
	(19,'Visvesvaraya Industrial and Technological Museum','Science and Technology','Banglore','9:30 AM to 6:00 PM','Ganesha Chathurthi and Deepavali','3 hours','The Visvesvaraya Industrial and Technological Museum in Bangalore, Karnataka, is a premier science museum showcasing India''s industrial and technological advancements. The museum features interactive exhibits on science and technology, including engines, machines, and electronic devices. Named after Bharat Ratna Sir M. Visvesvaraya, the museum aims to inspire innovation and curiosity among visitors.'),
	(20,'Nehru Science Centre','Science and Technology','Mumbai, Maharashtra','9:30 AM to 6:00 PM','Diwali and Holi','3 hours','The Nehru Science Centre in Mumbai, Maharashtra, is one of India''s largest and most popular science museums, promoting science education and awareness. The centre features interactive exhibits, science demonstrations, and a planetarium, showcasing the wonders of science and technology. With a focus on hands-on learning, the centre aims to inspire curiosity and innovation among visitors.'),
	(21,'National Science Centre','Science and Technology','Delhi','9:30 AM to 6:00 PM','Holi and Diwali','2 hours','The National Science Centre in New Delhi, India, is a premier science museum showcasing the country''s scientific and technological advancements. With a range of interactive exhibits and displays, the centre aims to promote science education, awareness, and literacy among visitors. Its exhibits cover various fields, including science, technology, engineering, and mathematics (STEM).'),
	(22,'Birla Science Museum','Science and Technology','Hyderabad','10:30 AM to 8:00 PM','Opens Daily','2 hours','The Birla Science Museum in Hyderabad, Telangana, is a popular science museum showcasing interactive exhibits on science and technology. The museum features a planetarium, a science centre, and a museum showcasing the history of science in India. Its exhibits aim to educate and inspire visitors, especially students, about the wonders of science and technology.'),
	(23,'Birla Industrial & Technological Museum','Science and Technology','Kolkata','9:30 AM to 6:00 PM','Holi and Diwali','2 hours','The Birla Industrial & Technological Museum in Kolkata, West Bengal, is a science museum showcasing India''s industrial and technological advancements. The museum features exhibits on various fields, including physics, chemistry, biology, and mathematics, as well as a collection of industrial and technological artifacts. Its interactive exhibits aim to promote science education and awareness among visitors.'),
	(24,'Science City','Science and Technology','Kolkata','10:00 AM to 7:00 PM','Holi','1 hour','Science City in Kolkata, West Bengal, is a premier science museum and amusement park showcasing interactive exhibits on science and technology. The complex features a range of attractions, including a planetarium, a space theatre, and a science centre with interactive exhibits. Its aim is to educate and entertain visitors, promoting science awareness and literacy.'),
	(25,'Kerala Science and Technology Museum','Science and Technology','Kerala','10:00 AM to 5:00 PM','Monday','3hour','The Kerala Science and Technology Museum in Thiruvananthapuram, Kerala, is a popular science museum showcasing interactive exhibits on science and technology. The museum features a planetarium, a science park, and galleries on various scientific topics, aiming to educate and inspire visitors. Its exhibits cover fields such as physics, chemistry, biology, and mathematics, promoting science awareness and literacy.'),
	(26,'Gujarat Science City','Science and Technology','Ahmedabad','10:00 AM to 7:30 PM','Monday','3 hours','Gujarat Science City in Ahmedabad, Gujarat, is a sprawling science complex showcasing interactive exhibits on science and technology. The complex features an IMAX 3D theatre, a planetarium, an energy park, and various galleries on scientific topics, aiming to educate and entertain visitors. Its exhibits promote science awareness, literacy, and innovation, making it a popular destination for students, researchers, and families.'),
	(27,'Reginal Science Center','Science and Technology','Bhopal','09:30 AM - 06:00 PM','Diwali and Holi','3 hours','The Regional Science Center in various locations across India, including Bhopal, Bhubaneswar, and Calicut, is a science museum showcasing interactive exhibits on science and technology. The centre aims to promote science awareness, education, and literacy among students, teachers, and the general public. Its exhibits cover various scientific topics, including physics, chemistry, biology, and mathematics, with a focus on hands-on learning.'),
	(28,'Regional Science Centre and Planetarium','Science and Technology','Calicut','10:00 AM - 06:00 PM','Diwali and Vijayadashami','2 hours','The Regional Science Centre and Planetarium is a science museum located in various cities across India, featuring interactive exhibits on science and technology. The centre aims to promote science education, awareness, and literacy through its exhibits, planetarium shows, and educational programs. Its facilities include a planetarium, science galleries, and an auditorium, offering a unique learning experience for visitors.'),
	(29,'Jalan Museum (Quila House)','Museum-house','Patna,Bihar','Monday to Saturday: 09:00 AM - 11:00 AM, Sunday: 10:00 AM - 04:00 PM','Opens Daily','1 hour','The Jalan Museum, also known as Quila House, is a private museum located in Patna, Bihar, showcasing a unique collection of artifacts and antiques. The museum features an impressive array of items, including sculptures, paintings, textiles, and archaeological relics, highlighting the region''s rich cultural heritage. The museum is housed in the historic Quila House, a colonial-era building that adds to the museum''s charm.'),
	(30,'Gandhi Smarak Sangrahalaya (Gandhi Memorial Museum) ','Museum-house','Ahmedabad, Gujarat','10:00 AM - 06:00 PM','Opens Daily','2hours','The Gandhi Smarak Sangrahalaya, also known as the Gandhi Memorial Museum, is a museum dedicated to the life and legacy of Mahatma Gandhi, located in Patna, Bihar, and other locations across India. The museum showcases a vast collection of Gandhi''s personal belongings, letters, and photographs, as well as exhibits on the Indian independence movement. Its aim is to preserve Gandhi''s memory and promote his values of non-violence, simplicity, and self-reliance.'),
	(31,'Teen Murti Bhavan (Nehru Memorial Museum and Library)','Museum-house','New Delhi','10:00 AM - 05:00 PM','Monday','2hours','The Teen Murti Bhavan, also known as the Nehru Memorial Museum and Library, is a museum and library located in New Delhi, India, showcasing the life and legacy of Jawaharlal Nehru, India''s first Prime Minister. The museum features exhibits on Nehru''s life, including his personal belongings, letters, and photographs, as well as a collection of rare books and manuscripts. The library is a renowned research centre on modern Indian history, politics, and culture.'),
	(32,'Victoria Memorial ','Museum-house','Kolkata','10:00 AM - 05:00 PM, 05:30 AM - 06:15 PM (Gardens)','Monday','3 hours','The Victoria Memorial is a grand museum and memorial located in Kolkata, West Bengal, India, built in memory of Queen Victoria. The museum showcases a vast collection of artifacts and exhibits on the British Raj, Indian history, and the city of Kolkata, including paintings, sculptures, and memorabilia. Its stunning architecture, combining elements of Victorian and Indian styles, makes it one of Kolkata''s most iconic landmarks.'),
	(33,'Albert Hall Museum','Museum-house',' Jaipur, Rajasthan','09:00 AM - 05:00 PM, 07:00 PM - 10:00 PM','Opens Daily','3hours','The Albert Hall Museum is a historic museum located in Jaipur, Rajasthan, India, showcasing a diverse collection of artifacts, including sculptures, paintings, carpets, and jewelry. Built in 1887, the museum is housed in a stunning example of Indo-Saracenic architecture and features a range of exhibits on Rajasthani culture, history, and art. Its collections provide a glimpse into the region''s rich cultural heritage and craftsmanship.'),
	(34,'Jagdish and Kamla Mittal Museum of Indian Art','Museum-house','Hyderabad','10:00 AM - 05:00 PM','sundays','4 hours','The Jagdish and Kamla Mittal Museum of Indian Art is a private museum located in Hyderabad, Telangana, India, showcasing a vast collection of Indian art and artifacts. The museum features a range of exhibits, including sculptures, paintings, textiles, and jewelry, spanning from ancient to modern times. Its collection provides a comprehensive overview of India''s rich artistic heritage and cultural diversity.'),
	(35,'Maharaja Fateh Singh Museum ','Museum-house','Vadodara, Gujarat','10:00 AM - 05:00 PM','Monday and public holidays','2 hours','The Maharaja Fateh Singh Museum is a museum located in Vadodara, Gujarat, India, showcasing a collection of art and artifacts from the royal family of Baroda. The museum features exhibits on European and Indian art, including paintings, sculptures, and furniture, as well as a collection of rare books and manuscripts. Its collections provide a glimpse into the rich cultural heritage of the Gaekwad dynasty.'),
	(36,'Kirti Mandir','Museum-house','Porbandar, Gujarat','10:00 AM - 12:00 PM,3:00 PM - 06:30 PM','Opens Daily','2 hours','The Kirti Mandir is a historic monument and museum located in Porbandar, Gujarat, India, commemorating the life and legacy of Mahatma Gandhi. The monument was built in 1950 on the site where Gandhi was born in 1869 and features a museum showcasing exhibits on Gandhi''s life, a library, and a memorial hall. The Kirti Mandir serves as a pilgrimage site for those seeking to learn about and pay tribute to Gandhi''s philosophy and legacy.'),
	(37,'Government Museum','Archeological Museum','Chennai','09:30 AM - 05:00 PM','Friday and public holidays','2 hours','The Government Museum in Chennai, established in 1851, is one of the oldest and largest museums in India, showcasing a vast collection of artifacts related to anthropology, archaeology, numismatics, and fine arts. The museum complex consists of six buildings, including the Pantheon Complex, which houses a impressive collection of sculptures and artifacts from ancient India. Its collections provide a comprehensive overview of the region''s rich cultural and historical heritage.'),
	(38,'Archaeological Museum','Archeological Museum','Sarnath, Uttar Pradesh','09:00 AM - 05:00 PM','Friday and public holidays','3 hours','The Archaeological Museum in Sarnath, located near Varanasi, Uttar Pradesh, houses a collection of artifacts from the ancient city of Sarnath, including sculptures, reliefs, and other relics from the Mauryan and Gupta periods. The museum''s collections include the famous Lion Capital of Ashoka, which is also the national emblem of India. Its exhibits provide valuable insights into the history and development of Buddhist art and architecture.'),
	(39,'Indian Museum of Archaeology','Archeological Museum','Kolkata,West Bengal','10:00 AM - 5:00 PM','Monday and public holidays','3 hours','The Indian Museum in Kolkata, West Bengal, is one of the oldest and largest museums in India, housing a vast collection of artifacts related to archaeology, anthropology, geology, and art. Established in 1814, the museum features exhibits on Indian art, culture, and history, including sculptures, paintings, and relics from ancient civilizations. Its collections include some of the most significant archaeological finds in India, making it a premier institution for research and learning.'),
	(40,'National Museum of Athropology','Archeological','New Delhi','10:00 AM - 5:00 PM','Monday and public holidays','2 hours','The National Museum of Anthropology in Delhi is part of the National Museum and showcases the diverse cultural heritage of India''s tribes and communities. The museum features exhibits on anthropology, ethnography, and prehistory, including artifacts, textiles, and other objects that highlight the country''s rich cultural diversity. Its collections provide valuable insights into the lives, traditions, and customs of India''s indigenous peoples.'),
	(41,'State Archaelogical Museum','Archeological','Hyderabad,Telangana','10:30 AM - 5:00 PM','Public Holidays','1 hour','The State Archaeological Museum in Hyderabad, Telangana, is a treasure trove of archaeological artifacts showcasing the region''s rich cultural heritage. The museum features exhibits on the history and culture of the Deccan region, including sculptures, inscriptions, and other relics from ancient and medieval periods. Its collections include artifacts from the Satavahana, Ikshvaku, and Kakatiya dynasties, providing valuable insights into the region''s past.'),
	(42,'Archaeological Museum','Archeological','Goa','10:00 AM - 5:00 PM','Monday and public holidays','2 hours','The Archaeological Museum in Goa, located in the Old Goa area, houses a collection of artifacts showcasing the state''s rich cultural and archaeological heritage. The museum features exhibits on the history of Goa, including sculptures, inscriptions, and other relics from the prehistoric to the medieval periods. Its collections include artifacts from the Kadamba, Vijayanagara, and Portuguese periods, providing valuable insights into Goa''s complex past.'),
	(43,'Government Museum','Archeological','banglore,Karnataka','10:00 AM - 5:00 PM','Monday and public holidays','2 hours','The Government Museum in Bangalore, established in 1865, is one of the oldest museums in India and houses a vast collection of artifacts related to archaeology, geology, and art. The museum features exhibits on the history and culture of Karnataka, including sculptures, inscriptions, and other relics from ancient and medieval periods. Its collections include artifacts from the Neolithic period to the Vijayanagara Empire, providing valuable insights into the region''s rich cultural heritage.'),
	(44,'National Museum of Minerals','General','New Delhi','10:00 AM - 5:00 PM','Monday and public holidays','1 hour','The National Museum of Minerals in Delhi is a unique museum showcasing India''s rich mineral wealth and geological heritage. The museum features exhibits on mineralogy, geology, and mining, including a vast collection of minerals, ores, and rocks from across the country. Its interactive displays and collections provide insights into the importance of minerals in India''s economy and everyday life.'),
	(45,'Rail Museum','General','Mysore,Karnataka','9:30 AM - 5:30 PM','Public Holidays','1 hour','The Rail Museum, located in Chanakyapuri, New Delhi, showcases India''s rich railway heritage and history. The museum features a vast collection of locomotives, coaches, and other railway artifacts, including the iconic Fairy Queen, the oldest working steam locomotive in the world. Its exhibits provide insights into the development of India''s railways and their impact on the country''s economy and society.'),
	(46,'Kolkata Panorama','General','Kolkata,West Bengal','11:00 AM - 6:00 PM','Monday and public holidays','2 hours','The Kolkata Panorama, also known as the Kolkata Museum of Modern History, is a unique museum showcasing the history and heritage of Kolkata through interactive exhibits and displays. Located at the Netaji Bhawan premises, the museum features a 360-degree panorama depicting key events and landmarks in Kolkata''s history. Its immersive exhibits provide visitors with a engaging and informative experience about the city''s rich cultural and historical heritage.'),
	(47,'National museum of Indian cinema','General','Mumbai,Maharastra','11:00 AM - 6:00 PM','Monday and public holidays','2 hours','The National Museum of Indian Cinema, located in Mumbai, Maharashtra, is a premier museum showcasing the history and evolution of Indian cinema. The museum features interactive exhibits, artifacts, and memorabilia that highlight the journey of Indian cinema from its inception to the present day. Its collections include rare photographs, posters, equipment, and personal belongings of legendary film personalities, making it a treasure trove for film enthusiasts and historians.'),
	(48,'Manav Sangrahalaya','General','Madhya Pradesh','10:00 AM - 5:00 PM','Public Holidays','1 hour','The Manav Sangrahalaya, also known as the Museum of Man or the Indira Gandhi Rashtriya Manav Sangrahalaya, is an anthropology museum located in Bhopal, Madhya Pradesh. The museum showcases the rich cultural diversity of India, with a focus on the lives and traditions of the country''s indigenous communities. Its exhibits feature artifacts, photographs, and interactive displays that highlight the history, customs, and struggles of India''s tribal populations.'),
	(49,'Kerala Museum','General','Ernakulam,Kerala','9:30 AM - 5:00 PM','Public Holidays','2 hours','The Kerala Museum, located in Ernakulam, Kochi, is a premier cultural institution showcasing the art, history, and heritage of Kerala. The museum features a vast collection of artifacts, including sculptures, paintings, and antiquities, that highlight the state''s rich cultural traditions. Its exhibits also include a gallery on Kerala''s history, a collection of traditional Kerala architecture, and a gallery on the state''s renowned mural paintings.'),
	(50,'National Rail Museum','Historical,Science and Technology','New Delhi','10:00 AM - 5:00 PM','Monday','2 hours','The National Rail Museum, located in Chanakyapuri, New Delhi, showcases India''s rich railway heritage and history. The museum features a vast collection of locomotives, coaches, and other railway artifacts, including the iconic Fairy Queen, the oldest working steam locomotive in the world. Its exhibits provide insights into the development of India''s railways and their impact on the country''s economy and society.'),
	(51,'kumbharwada museum','Arts','Mumbai','11:00 AM - 7:00 PM','Public Holidays','1 hour','The Kumbharwada Museum, located in Dharwad, Karnataka, is a unique museum showcasing the traditional pottery and crafts of the Kumbhar community. The museum features a collection of traditional pottery, ceramics, and other crafts, highlighting the skills and techniques of the Kumbhar artisans. Its exhibits provide insights into the traditional crafts and lifestyle of the Kumbhar community.'),
	(52,'Rajiv Gandhi Musuem of Contemporary Art','Arts','New Delhi','10:00 AM - 6:00 PM','Monday','2 hours','The Rajiv Gandhi Museum of Contemporary Art, located in New Delhi, is a museum showcasing modern and contemporary Indian art. The museum features a diverse collection of artworks, including paintings, sculptures, and installations, highlighting the country''s rich cultural heritage. Its exhibits provide a platform for artists to showcase their work and for visitors to engage with the latest trends and innovations in Indian contemporary art.'),
	(53,'Dr Bhau Daji Lad Museum','Cultural Heritage','Mumbai','10:00 AM - 6:00 PM','Monday','1 hour','The Dr. Bhau Daji Lad Museum, located in Mumbai, Maharashtra, is one of India''s oldest and most prestigious museums. Established in 1872, the museum showcases a vast collection of artifacts, including sculptures, paintings, and decorative arts, highlighting India''s rich cultural heritage. The museum is named after Dr. Bhau Daji Lad, a physician and scholar who played a key role in its establishment.'),
	(54,'Raman Research Institute Museum','Science and Technology','Bangalore','10:00 AM - 5:00 PM','Sunday','1 hour','The Raman Research Institute Museum, located in Bangalore, Karnataka, is a museum showcasing the life and work of Nobel laureate Sir C.V. Raman. The museum features exhibits on Raman''s research, including his famous experiment on the scattering of light, as well as his personal belongings and memorabilia. The museum is located within the Raman Research Institute, a premier research institution founded by Raman himself.'),
	(55,'Textiles&Art Museum','Arts,Cultural Hertiage','Surat','10:30 AM - 6:30 PM','Monday','2 hours','The Textiles and Art Museum is a unique museum showcasing a diverse collection of textiles, artifacts, and art from India and around the world. The museum features exhibits on various aspects of textiles, including weaving, printing, and embroidery, as well as a collection of sculptures, paintings, and other art forms. Its exhibits provide insights into the rich cultural heritage and artistic traditions of India and beyond.'),
	(56,'Army Museum','Historical,Military Hertiage','Delhi','10:00 AM - 5:00 PM','Monday','2 hours','The Army Museum, also known as the Indian Army Museum, is a military museum showcasing the history and heritage of the Indian Army. The museum features exhibits on the army''s role in India''s independence, its wars and operations, and its contributions to national security and humanitarian missions. Its collections include uniforms, medals, weapons, and equipment, as well as interactive displays and multimedia exhibits.'),
	(57,'Gandhi Ashram','Historical,Cultural Heritage','Ahmedabad','8:30 AM - 6:00 PM','Opens Daily','1 hour','The Gandhi Ashram, located in Ahmedabad, Gujarat, is a museum and former ashram (residence) of Mahatma Gandhi, showcasing his life, philosophy, and legacy. The ashram, established in 1917, was a hub for India''s freedom movement and features several exhibits, including Gandhi''s personal belongings, letters, and photographs. The ashram complex also includes a museum, library, and archives, providing insights into Gandhi''s life and India''s struggle for independence.');
ALTER TABLE `ticket_price`
MODIFY COLUMN `type` VARCHAR(10) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `adult_price` VARCHAR(262) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Children_price` VARCHAR(4) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `photography_fee` VARCHAR(10) CHARACTER SET utf8mb4 NOT NULL;
ALTER TABLE `ticket_price`
ADD PRIMARY KEY (`Id`);
ALTER TABLE `ticket_price`
ADD CONSTRAINT `fk_museum`
FOREIGN KEY (`museum_Id`) REFERENCES `Museums`(`Id`)
ON DELETE CASCADE;
SHOW INDEX FROM `Museums`;
ALTER TABLE `Museums`
ADD PRIMARY KEY (`Id`);
ALTER TABLE `ticket_price`
ADD CONSTRAINT `fk_museum`
FOREIGN KEY (`museum_Id`) REFERENCES `Museums`(`Id`)
ON DELETE CASCADE;
SHOW CREATE TABLE `ticket_price`;
select * from Museums;
ALTER TABLE `ticket_price`
MODIFY COLUMN `Children_price` VARCHAR(4) CHARACTER SET utf8mb4 DEFAULT '0';
ALTER TABLE `ticket_price`
MODIFY COLUMN `photography_fee` VARCHAR(4) CHARACTER SET utf8mb4 DEFAULT '0';

INSERT INTO `ticket_price` VALUES (1,1,'Indian','20','free','prohibited'),
	(2,1,'Non-Indian','500','free','prohibited'),
	(3,2,'Indian','20','free','prohibited'),
	(4,2,'Non-Indian','500','free','prohibited'),
	(5,3,'Indian','free','free','free'),
	(6,3,'Non-Indian','free','free','free'),
	(7,4,'Indian','20','free','free'),
	(8,4,'Non-Indian','20','free','free'),
	(9,5,'Indian','20','5','free'),
	(10,5,'Non-Indian','20','5','free'),
	(11,6,'Indian','50','20','50'),
	(12,6,'Non-Indian','500','20','50'),
	(13,7,'Indian','100','50','free'),
	(14,7,'Non-Indian','100','50','free'),
	(15,8,'Indian','free','free','free'),
	(16,8,'Non-Indian','free','free','free'),
	(17,9,'Indian','50','free','200'),
	(18,9,'Non-Indian','500','free','200'),
	(19,10,'Indian','10','free','free'),
	(20,10,'Non-Indian','250','free','free'),
	(21,11,'Indian','150','35','200'),
	(22,11,'Non-Indian','700','200','200'),
	(23,12,'Indian','75','20','50100'),
	(24,12,'Non-Indian','500','500','50100'),
	(25,13,'Indian','20','free','50'),
	(26,13,'Non-Indian','650','free','50'),
	(27,14,'Indian','250','100','200'),
	(28,14,'Non-Indian','250','100','200'),
	(29,15,'Indian','55','free','free'),
	(30,15,'Non-Indian','55','free','free'),
	(31,16,'Indian','10','free','free'),
	(32,16,'Non-Indian','100','free','free'),
	(33,17,'Indian','300','150','free'),
	(34,17,'Non-Indian','500','300','free'),
	(35,18,'Indian','120','60','free'),
	(36,18,'Non-Indian','250','70','free'),
	(37,19,'Indian','95','35','free'),
	(38,19,'Non-Indian','95','35','free'),
	(39,20,'Indian','70','20','free'),
	(40,20,'Non-Indian','70','20','free'),
	(41,21,'Indian','70','20','free'),
	(42,21,'Non-Indian','70','20','free'),
	(43,22,'Indian','150','100','free'),
	(44,22,'Non-Indian','150','100','free'),
	(45,23,'Indian','50','20','free'),
	(46,23,'Non-Indian','50','20','free'),
	(47,24,'Indian','50','20','free'),
	(48,24,'Non-Indian','50','20','free'),
	(49,25,'Indian','30','20','free'),
	(50,25,'Non-Indian','30','20','free'),
	(51,26,'Indian','50','20','free'),
	(52,26,'Non-Indian','50','20','free'),
	(53,27,'Indian','40','20','20'),
	(54,27,'Non-Indian','100','50','50'),
	(55, 28, 'Indian', 'Science Centre Only: Individual: ₹40,Organized School Groups: ₹20,Special Schools: ₹5 Entry + Planetarium: Individual: ₹95,Organized School Groups: ₹40,Special Schools: ₹15 Entry + 3D Science Show:Individual: ₹75,Organized School Groups: ₹35,Special Schools: ₹10', '₹5', "free"),
    (56, 28, 'Non-Indian', 'Science Centre Only: Individual: ₹40,Organized School Groups: ₹20,Special Schools: ₹5 Entry + Planetarium: Individual: ₹95,Organized School Groups: ₹40,Special Schools: ₹15 Entry + 3D Science Show:Individual: ₹75,Organized School Groups: ₹35,Special Schools: ₹11', '₹5', "free"),
	(57,29,'Indian','free','free','free'),
	(58,29,'Non-Indian','free','free','free'),
	(59,30,'Indian','free','free','free'),
	(60,30,'Non-Indian','free','free','free'),
	(61,31,'Indian','50','30','free'),
	(62,31,'Non-Indian','50','30','free'),
	(63,32,'Indian','20,10','free','free'),
	(64,32,'Non-Indian','200','free','free'),
	(65,33,'Indian','free','free','free'),
	(66,33,'Non-Indian','300','150','50'),
	(67,34,'Indian','free','free','free'),
	(68,34,'Non-Indian','free','free','free'),
	(69,35,'Indian','free','free','free'),
	(70,35,'Non-Indian','400','200','200'),
	(71,36,'Indian','free','free','free'),
	(72,36,'Non-Indian','free','free','free'),
	(73,37,'Indian','free','free','free'),
	(74,37,'Non-Indian','free','free','free'),
	(75,38,'Indian','15','10','200'),
	(76,38,'Non-Indian','250','125','200'),
	(77,39,'Indian','5','free','free'),
	(78,39,'Non-Indian','100','free','free'),
	(79,40,'Indian','50','20','50'),
	(80,40,'Non-Indian','300','150','200'),
	(81,41,'Indian','20','10','20'),
	(82,41,'Non-Indian','650','350','500'),
	(83,42,'Indian','15','5','20'),
	(84,42,'Non-Indian','100','50','100'),
	(85,43,'Indian','10','5','20'),
	(86,43,'Non-Indian','50','25','50'),
	(87,44,'Indian','10','5','20'),
	(88,44,'Non-Indian','25','10','50'),
	(89,45,'Indian','50','20','50'),
	(90,45,'Non-Indian','200','100','150'),
	(91,46,'Indian','20','10','20'),
	(92,46,'Non-Indian','100','50','100'),
	(93,47,'Indian','10','5','20'),
	(94,47,'Non-Indian','50','25','50'),
	(95,48,'Indian','50','20','50'),
	(96,48,'Non-Indian','200','100','150'),
	(97,49,'Indian','20','10','20'),
	(98,49,'Non-Indian','100','50','100'),
	(99,50,'Indian','10','5','20'),
	(100,50,'Non-Indian','50','25','50'),
	(101,51,'Indian','20','10','20'),
	(102,51,'Non-Indian','100','50','100'),
	(103,52,'Indian','50','20','100'),
	(105,52,'Non-Indian','200','100','500'),
	(106,53,'Indian','30','10','50'),
	(107,53,'Non-Indian','50','20','100'),
	(108,54,'Indian','40','20','100'),
	(109,54,'Non-Indian','150','75','300'),
	(110,55,'Indian','40','20','50'),
	(111,55,'Non-Indian','300','150','200'),
	(112,56,'Indian','30','10','100'),
	(113,56,'Non-Indian','200','100','300'),
	(114,57,'Indian','free','free','50'),
	(115,57,'Non-Indian','free','free','100'),
	(116,58,'Indian','50','20','100'),
	(117,58,'Non-Indian','150','50','200'),
	(118,59,'Indian','50','20','100'),
	(119,60,'Non-Indian','200','100','200'),
	(120,61,'Indian','free','free','50'),
	(121,62,'Non-Indian','free','free','100');
ALTER TABLE `ticket_price`
MODIFY COLUMN `type` VARCHAR(10) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `adult_price` VARCHAR(262) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `Children_price` VARCHAR(4) CHARACTER SET utf8mb4 NOT NULL,
MODIFY COLUMN `photography_fee` VARCHAR(10) CHARACTER SET utf8mb4 NOT NULL;
ALTER TABLE `ticket_price`
MODIFY COLUMN `Children_price` VARCHAR(255) CHARACTER SET utf8mb4;
SELECT * FROM `museums` WHERE `Id` = 28;
SELECT `museum_Id`
FROM `ticket_price`
WHERE `museum_Id` NOT IN (SELECT `Id` FROM `museums`);
ALTER TABLE `ticket_price`
DROP FOREIGN KEY `fk_museum`;
ALTER TABLE `ticket_price`
ADD CONSTRAINT `fk_museum`
FOREIGN KEY (`museum_Id`)
REFERENCES `museums`(`Id`)
ON DELETE CASCADE;
DESCRIBE `ticket_price`;
DESCRIBE `museums`;
select * from ticket_price;
SET SQL_SAFE_UPDATES = 0;

UPDATE ticket_price
SET adult_price = 'free'
WHERE adult_price = '0';

UPDATE ticket_price
SET Children_price = 'free'
WHERE Children_price = '0';

UPDATE ticket_price
SET photography_fee = 'free'
WHERE photography_fee = '0';

SET SQL_SAFE_UPDATES = 1;

select * from ticket_price;
select * from Museums;

ALTER TABLE Ticket_Price
ADD COLUMN Student_Fee VARCHAR(255) DEFAULT 'free';

UPDATE Ticket_Price
SET Student_Fee = '100'
WHERE Museum_ID IN (14,22);

UPDATE Ticket_Price
SET Student_Fee = '200'
WHERE Museum_ID IN (17);

UPDATE Ticket_Price
SET Student_Fee = '50'
WHERE Museum_ID IN (18);

UPDATE Ticket_Price
SET Student_Fee = '35'
WHERE Museum_ID IN (19);

UPDATE Ticket_Price
SET Student_Fee = '20'
WHERE Museum_ID IN (20,21,23,24,25,26,28,31,40,47);

UPDATE Ticket_Price
SET Student_Fee = '10'
WHERE Museum_ID IN (27,41,45,48,50);

UPDATE Ticket_Price
SET Student_Fee = '75'
WHERE Museum_ID IN (35);

UPDATE Ticket_Price
SET Student_Fee = '5'
WHERE Museum_ID IN (38,42,43,44,46,49);

show databases;
use museum;
show tables;