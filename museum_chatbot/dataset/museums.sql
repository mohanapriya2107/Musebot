use museum;
CREATE TABLE ticket_booking (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    museum_name TEXT NOT NULL,
    category TEXT NOT NULL,
    adult_tickets INTEGER NOT NULL,
    children_tickets INTEGER NOT NULL,
    photography_tickets INTEGER NOT NULL,
    visit_date TEXT NOT NULL,
    visit_time TEXT NOT NULL
);
CREATE TABLE MuseumDetails (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    Opening_hours VARCHAR(255) NOT NULL,
    Holidays VARCHAR(255) NOT NULL,
    Required_Time VARCHAR(100) NOT NULL,
    Description TEXT NOT NULL
);
INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description)
VALUES
('National Gallery of Modern Art', 'Arts', 'Delhi', '10:00 AM - 5:00 PM', 'Monday and public holidays', '3 hours', 'The National Gallery of Modern Art is a premier art museum located in New Delhi, India. Established in 1954, it is one of the largest and most visited modern art museums in the country. The gallery\'s collection features over 20,000 works of modern and contemporary Indian art, including paintings, sculptures, and other art forms. It also hosts temporary exhibitions, workshops, and educational programs, making it a hub for art enthusiasts and scholars alike. The gallery\'s collection spans from the early 20th century to the present day, showcasing the evolution of modern Indian art.'),
('Academy of Fine Arts', 'Arts', 'Kolkata', '10:00 AM - 5:00 PM', 'Opens Daily', '2 hours', 'The Academy of Fine Arts is a prestigious institution that focuses on providing comprehensive training in various fine arts disciplines. These may include painting, sculpture, photography, printmaking, and other visual arts. Many Academy of Fine Arts programs emphasize studio work, theory, and art history. The goal of these programs is to equip students with the skills and knowledge necessary to become successful artists, curators, or art administrators. Many Academy of Fine Arts graduates go on to establish successful careers in the art world, exhibiting their work in galleries and museums around the world.'),
('Birla Academy of Fine Art and Culture', 'Arts', 'Kolkata', '3:00 PM - 8:00 PM', 'Monday and public holidays', '3 hours', 'The Birla Academy of Art and Culture is a premier cultural institution located in Kolkata, India. Founded in 1966 by B.K. Birla, it is a non-profit organization dedicated to promoting arts, literature, and culture. The academy offers a range of programs and activities, including art exhibitions, concerts, and literary events. It also has a museum showcasing a collection of Indian art and artifacts. The academy\'s primary objective is to foster a deeper appreciation and understanding of Indian art and culture, both nationally and internationally. It is considered a hub for cultural enthusiasts and art lovers in India.'),
('Sri Chitra Art Gallery', 'Arts', 'Thiruvananthapuram', '10:00 AM - 5:00 PM', 'Monday and public holidays', '2 hours', 'The Sri Chitra Art Gallery is a renowned art gallery located in Trivandrum, Kerala, India. Established in 1935, it is one of the largest and most visited art galleries in India. The gallery showcases an extensive collection of Indian art, including paintings, sketches, and sculptures from the 14th to the 20th centuries. It also features works by prominent Indian artists, such as Raja Ravi Varma, Rabindranath Tagore, and Jamini Roy. With over 400 paintings on display, the gallery provides a unique opportunity to explore the rich cultural heritage of India through its art.'),
('Salar Jung Museum', 'Arts, Historical Museums, Museum-house', 'Hyderabad', '10:00 AM - 5:00 PM', 'Friday and public holidays', '3 hours', 'The Salar Jung Museum is one of the largest and most renowned museums in India. It is known for its extensive collection of art, antiques, and artifacts from various parts of the world. The museum\'s collection spans centuries of history, with significant items from European, Asian, and Middle Eastern cultures. It includes sculptures, textiles, manuscripts, weapons, and much more. The museum is a treasure trove of cultural history and is particularly famous for its collection of Persian carpets, Mughal miniatures, and European clocks. Students and researchers of art history, archaeology, and cultural studies find the museum an invaluable resource for understanding diverse global art forms and historical connections.'),
('Kerala Folklore Museum', 'Arts', 'Kochi', '9:00 AM - 6:00 PM', 'Opens Daily', '2 hours', 'The Kerala Folklore Museum is a museum located in Kochi, Kerala, India. It was established in 1990 and is dedicated to preserving and showcasing the traditional art, culture, and folklore of Kerala. The museum features a collection of over 7,000 artifacts, including sculptures, paintings, and folk art objects. It also hosts cultural events and workshops to promote the preservation and appreciation of Kerala\'s rich cultural heritage. The museum is a popular tourist destination and a valuable resource for researchers and scholars interested in Kerala\'s folklore and cultural traditions.'),
('Gandhi Smriti', 'Historical Museums', 'New Delhi', '10:00 AM - 5:00 PM', 'Monday and public holidays', '2 hours', 'Gandhi Smriti is a national memorial located in New Delhi, India. It is dedicated to the life and philosophy of Mahatma Gandhi, a prominent Indian independence activist. The memorial is situated in the Birla House, where Gandhi was assassinated on January 30, 1948. The complex houses a museum, a library, and a prayer hall, among other attractions. Gandhi Smriti is a significant tourist destination and a place of great historical and cultural importance in India, offering a glimpse into the life and legacy of Mahatma Gandhi. It is maintained by the Indian government.'),
('Victoria Memorial Hall', 'Historical Museums, Museum-house', 'Kolkata', '10:00 AM - 6:00 PM', 'Monday and public holidays', '3 hours', 'The Victoria Memorial Hall is an iconic landmark and museum in Kolkata, dedicated to the memory of Queen Victoria. It stands as a monumental piece of British colonial architecture and houses a vast collection of artifacts related to the British Empire\'s impact on India. The museum focuses on showcasing artworks, sculptures, and historical relics from the colonial era, as well as highlighting Queen Victoria\'s legacy and the history of British rule in India. The museum also includes exhibits on Indian art and culture during the British period, offering a blend of history, art, and colonial heritage. This institution is a major resource for art students, historians, and anyone interested in the complex history of colonial India.'),
('Partition Museum', 'Historical Museums', 'Amritsar, Punjab', '10:00 AM - 6:00 PM', 'Monday and public holidays', '2 hours', 'The Partition Museum is a museum located in Amritsar, India, that commemorates the partition of India and Pakistan in 1947. The museum was opened in 2017 and is housed in a 19th-century prison building that was once used to detain people during the partition. The museum showcases the personal stories and experiences of those who were affected by the partition, through artifacts, photographs, and interactive exhibits. It also aims to provide a platform for people to reflect on the past and work towards a more peaceful and tolerant future. The museum is a significant cultural and historical landmark in India.');

INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description) 
VALUES 
('Chhatrapati Shivaji Maharaj Vastu Sangrahalaya (formerly Prince of Wales Museum)', 'Historical Museums', 'Mumbai, Maharashtra', '10:15 AM - 6:00 PM', 'Public holidays', '3 hours', "The Chhatrapati Shivaji Maharaj Vastu Sangrahalaya (CSMVS) is a museum located in Mumbai, India. It was originally established in 1905 as the Prince of Wales Museum, named after the then-Prince of Wales, who later became King Edward VIII. The museum is housed in a stunning neoclassical building designed by George Wittet. It features a diverse collection of over 50,000 artifacts, including Indian art, sculpture, and cultural exhibits. The museum has undergone significant renovations and is now named after the legendary Maratha leader Chhatrapati Shivaji Maharaj, in honor of his rich history and cultural heritage."),
('Indian Museum', 'Historical Museums, Archeology Museum', 'Kolkata', '10:00 AM - 6:00 PM', 'Monday and public holidays', '3 hours', "The Indian Museum, located in Kolkata, India, is one of the oldest and largest museums in South Asia. Founded in 1814, it was established by the Asiatic Society of Bengal. The museum houses a vast collection of artifacts, artworks, and relics that span over 5,000 years of Indian history and culture. Its collection includes Indian sculptures, Mughal art, and ancient coins. The museum's vast repository also includes a dinosaur fossil and an Egyptian mummy, showcasing the country's rich cultural and historical heritage. It is a must-visit destination for anyone interested in Indian history and art."),
('National Museum', 'Historical Museums, Archeology Museum', 'New Delhi', '10:00 AM - 6:00 PM', 'Monday and public holidays', '3 hours', "The National Museum is a museum that showcases the history, art, and culture of a particular country or region. There are many National Museums around the world, each with its own unique collection and exhibits. The Smithsonian National Museum in Washington D.C., for example, is one of the largest and most visited museums in the world, with a collection of over 154 million objects, artworks, and specimens. National Museums often serve as a repository for a nation's cultural and historical heritage, providing a platform for education, research, and community engagement."),
('City Palace Museum', 'Historical Museums', 'Rajasthan', '9:30 AM - 5:30 PM', 'Opens Daily', '3 hours', "The City Palace Museum in Jaipur is a living testament to the grandeur of Rajasthan's royal past. The museum is housed in the City Palace, which was the seat of the Maharaja of Jaipur. It showcases a fascinating collection of royal artifacts, including paintings, textiles, weapons, and manuscripts that highlight the rich cultural and architectural heritage of Rajasthan. The museum also provides insight into the lifestyle, art, and history of the Rajput kings. The collection includes miniature paintings, royal costumes, and ceremonial objects that are vital for understanding the region’s artistic traditions and royal history."),
('Jaisalmer War Museum', 'Historical Museums', 'Rajasthan', '10:00 AM - 6:00 PM', 'Opens Daily', '2 hours', "The Jaisalmer War Museum is a museum located in Jaisalmer, Rajasthan, India. It was established in 2015 to commemorate the contributions of the Indian Armed Forces, particularly the Desert Corps, in various wars and military operations. The museum showcases a collection of tanks, artillery, and other military equipment, as well as a gallery of photographs and memorabilia. It also has a museum gallery that features a collection of uniforms, medals, and other military artifacts. The museum aims to provide a glimpse into the history of the Indian Armed Forces and their sacrifices."),
('Tribal Museum', 'Historical Museums', 'Bhopal', '12:00 PM - 8:00 PM', 'Monday and public holidays', '3 hours', "The Tribal Museum in Bhopal is dedicated to preserving the cultural heritage of the tribal communities of Madhya Pradesh. The museum offers a unique insight into the lives, traditions, and art of the various tribal groups in the region. It features a wide array of tribal artifacts, including clothing, jewelry, tools, and religious objects, providing a detailed picture of the everyday life and artistic expressions of these communities. The museum also includes exhibits on tribal architecture, music, and dances, making it an essential destination for anthropology and cultural studies students."),
('Heritage Transport Museum', 'Historical Museums', 'Haryana', '10:00 AM - 7:00 PM', 'Monday and public holidays', '3 hours', "The Heritage Transport Museum is a popular museum located in Panchkula, Haryana, India. It was established in 2003 and is dedicated to showcasing the history and evolution of transportation in India. The museum features a vast collection of vintage cars, buses, trams, and other vehicles, along with interactive exhibits and display galleries. Visitors can see a replica of a 19th-century carriage, a vintage motorcycle, and a collection of rare and historic cars. The museum also offers a unique glimpse into India's transportation history, making it a must-visit destination for history buffs and automobile enthusiasts."),
('DakshinaChitra Museum', 'Historical Museums', 'Tamil Nadu', '10:00 AM - 6:00 PM', 'Tuesday and Diwali', '3 hours', "DakshinaChitra Museum is a living history museum located in Chennai, India. It showcases the art, culture, and way of life of the people of South India, specifically the states of Tamil Nadu, Kerala, and Karnataka. The museum is spread over 10 acres and features 18 traditional houses from different parts of South India, which have been reconstructed on the site. Visitors can explore these houses and experience the daily life of people from different regions, see traditional crafts and arts, and enjoy performances like dance and music. It's a unique blend of history, culture, and entertainment."),
('Visvesvaraya Industrial and Technological Museum', 'Science and Technology', 'Banglore', '9:30 AM - 6:00 PM', 'Ganesha Chathurthi and Deepavali', '3 hours', "The Visvesvaraya Industrial and Technological Museum, located in Bengaluru, India, is a science and technology museum that showcases India's industrial and technological progress. Named after M Visvesvaraya, a renowned engineer and statesman, the museum features exhibits on science, technology, engineering, and mathematics (STEM) fields, including robotics, electronics, and computer science. It also has a planetarium, a science park, and an art gallery, making it a popular destination for students, researchers, and science enthusiasts. The museum is part of the National Council of Science Museums, India, and aims to promote science education and awareness.");

select * from museumdetails;
INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description) 
VALUES 
('Nehru Science Centre', 'Science and Technology', 'Mumbai, Maharashtra', '9:30 AM - 6:00 PM', 'Diwali and Holi', '3 hours', 'The Nehru Science Centre is a popular science museum located in Mumbai, India. It was established in 1977 and is one of the largest science centres in Asia. The centre has over 500 exhibits showcasing various scientific and technological concepts, including space exploration, physics, chemistry, and biology. Visitors can interact with models and experiments, watch live demonstrations, and participate in hands-on activities. The centre also has a planetarium, an IMAX theatre, and a 3D theatre, making it an ideal destination for families, students, and science enthusiasts. It is a great place to learn and have fun at the same time.'),
('National Science Centre', 'Science and Technology', 'Delhi', '9:30 AM - 6:00 PM', 'Holi and Diwali', '3 hours', 'The National Science Centre is a popular science museum located in various cities across India. The first National Science Centre was established in 1984 in New Delhi and since then, several other centres have been set up in different cities. These centres aim to promote science literacy and awareness among the general public, especially children, through interactive exhibits, workshops, and demonstrations. The exhibits cover a wide range of topics, including astronomy, biology, chemistry, physics, and more. The centres also host temporary exhibitions, shows, and events to engage visitors and inspire a love for science.'),
('Birla Science Museum', 'Science and Technology', 'Hyderabad', '10:30 AM - 8:00 PM', 'Opens Daily', '3 hours', 'The Birla Science Museum is a popular science museum located in Hyderabad, India. It was established in 1992 and is named after the Birla family, a prominent Indian business family. The museum showcases a wide range of scientific exhibits, including dinosaur fossils, a planetarium, and an observatory. It also features a collection of scientific instruments and a hands-on science center for children. The museum is a great place to learn about science and technology in a fun and interactive way. It is a popular tourist destination in Hyderabad and is visited by thousands of people every year.'),
('Birla Industrial & Technological Museum', 'Science and Technology', 'Kolkata', '9:30 AM - 6:00 PM', 'Holi and Diwali', '3 hours', 'The Birla Industrial and Technological Museum is a science museum located in Kolkata, India. It was established in 1959 and is one of the oldest science museums in India. The museum showcases a wide range of scientific and technological exhibits, including a collection of industrial equipment, artifacts, and interactive displays. It also features a planetarium and a gallery dedicated to the history of science and technology in India. The museum is a popular tourist destination and a valuable resource for students and researchers interested in science and technology. It is managed by the National Council of Science Museums.'),
('Science City', 'Science and Technology', 'Kolkata', '10:00 AM - 7:00 PM', 'Holi', '3 hours', 'Science City is a popular science center located in Kolkata, India. It is a hub for science education, entertainment, and innovation, showcasing various scientific principles and concepts through interactive exhibits, demonstrations, and hands-on activities. The city is divided into different zones, including Space Odyssey, Butterfly Garden, Science Park, and IMAX Theater, among others. Science City attracts millions of visitors each year, making it one of the most visited science centers in Asia. It aims to promote scientific awareness, curiosity, and learning among people of all ages and backgrounds.'),
('Kerala Science and Technology Museum', 'Science and Technology', 'Kerala', '10:00 AM - 5:00 PM', 'Monday', '3 hours', 'The Kerala Science and Technology Museum is a popular science museum located in Thiruvananthapuram, Kerala, India. The museum showcases a wide range of scientific and technological exhibits, including a collection of vintage cars, a model of a submarine, and a section on Kerala\'s rich cultural heritage. The museum also features interactive displays and live demonstrations, making it an engaging and educational experience for visitors of all ages. It is an ideal destination for science enthusiasts, students, and families, providing a unique and enjoyable learning experience. It was established in 1955, and it is open six days a week.'),
('Gujarat Science City', 'Science and Technology', 'Ahmedabad', '10:00 AM - 7:30 PM', 'Monday', '3 hours', 'Gujarat Science City is a popular science museum and amusement park located in Ahmedabad, Gujarat, India. It was established in 2000 and is one of the largest science museums in Asia. The city offers a range of interactive science exhibits, 3D theater shows, and a butterfly garden. Visitors can also explore a mini railway, a nature park, and a space world gallery. The complex is spread over 88 acres and attracts millions of visitors every year, making it a must-visit destination for science enthusiasts and families. It promotes science education and awareness among the general public.'),
('Regional Science Centre', 'Science and Technology', 'Bhopal', '09:30 AM - 06:00 PM', 'Diwali and Holi', '3 hours', 'The Regional Science Centre in Bhopal is a popular science centre that showcases science and technology in an interactive and engaging manner. Located in the capital city of Madhya Pradesh, it is a part of the National Council of Science Museums (NCSM), a premier scientific institution in India.'),
('Regional Science Centre and Planetarium', 'Science and Technology', 'Calicut', '10:00 AM - 06:00 PM', 'Diwali and Vijayadashami', '4 hours', 'The Regional Science Centre and Planetarium in Calicut is a popular tourist destination and educational hub. Located in Kozhikode, Kerala, India, it was established in 1992 by the National Council of Science Museums (NCSM). The centre features various interactive science exhibits, a planetarium, and a children\'s science park. The planetarium showcases 3D educational programs and documentaries on astronomy and space science. The centre also conducts workshops, seminars, and camps for students and teachers to promote science literacy and awareness. It is a must-visit destination for science enthusiasts and students of all ages.');

INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description) 
VALUES
('Jalan Museum (Quila House)', 'Museum-house', 'Patna,Bihar', 'Monday - Saturday: 09:00 AM - 11:00 AM, Sunday: 10:00 AM - 04:00 PM', 'Opens Daily', '2 hours', 'Jalan Museum (Quila House) is a museum located in Sibu, Sarawak, Malaysia. It is housed in a building that was originally a 19th-century capitol building, which served as the residence of the White Rajah, Charles Brooke. The museum showcases the history and culture of Sarawak, with exhibits on the state\'s early history, traditional clothing, and ethnology. The building itself is a fine example of colonial architecture and has been restored to its original grandeur. Visitors can explore the museum\'s galleries and learn about the rich history of Sarawak.'),
('Gandhi Smarak Sangrahalaya (Gandhi Memorial Museum)', 'Museum-house', 'Ahmedabad, Gujarat', '10:00 AM - 06:00 PM', 'Opens Daily', '2 hours', 'The Gandhi Smarak Sangrahalaya, also known as the Gandhi Memorial Museum, is a museum located in Ahmedabad, Gujarat, India. It is dedicated to the life and teachings of Mahatma Gandhi, a key figure in India\'s struggle for independence. The museum showcases a vast collection of artifacts, photographs, and personal belongings of Gandhi, providing insight into his life and legacy. The museum also hosts exhibitions and events that highlight Gandhi\'s philosophy of non-violence and peaceful coexistence. It is a significant cultural and historical landmark in India, attracting visitors from around the world.'),
('Teen Murti Bhavan (Nehru Memorial Museum and Library)', 'Museum-house', 'New Delhi', '10:00 AM - 05:00 PM', 'Monday', '2 hours', 'Teen Murti Bhavan, also known as the Nehru Memorial Museum and Library, is a museum located in New Delhi, India. It was the official residence of India\'s first Prime Minister, Jawaharlal Nehru, and is now a museum showcasing his life and legacy. The museum features a collection of Nehru\'s personal belongings, photographs, and documents, as well as a library with a vast collection of books and papers related to Indian history and politics. The building itself is a historic monument and a popular tourist destination in New Delhi.'),
('Albert Hall Museum', 'Museum-house', 'Jaipur, Rajasthan', '09:00 AM - 05:00 PM, 07:00 PM - 10:00 PM', 'Opens Daily', '2 hours', 'The Albert Hall Museum is a museum located in Jaipur, Rajasthan, India. It was established in 1887 and is one of the oldest museums in India. The museum is housed in a beautiful example of Indo-Saracenic architecture, with a stunning blend of Mughal and Rajput styles. The museum\'s collection includes a wide range of artifacts, including paintings, sculptures, pottery, and jewelry from the Mughal and Rajput periods. The museum also features a large collection of natural history specimens and a gallery dedicated to the history of printing. It is a must-visit destination for history and art enthusiasts.'),
('Jagdish and Kamla Mittal Museum of Indian Art', 'Museum-house', 'Hyderabad', '10:00 AM - 05:00 PM', 'Sunday', '2 hours', 'The Jagdish and Kamla Mittal Museum of Indian Art is a museum located in Solan, Himachal Pradesh, India. The museum showcases a vast collection of Indian art and artifacts, including paintings, sculptures, and decorative arts. The museum\'s collection spans over a thousand years of Indian art history, from the medieval to the modern period. It also features a beautiful garden and a peaceful atmosphere, making it a popular tourist destination for those interested in art, history, and culture. The museum is open to visitors and offers a unique opportunity to explore Indian art and heritage.'),
('Maharaja Fateh Singh Museum', 'Museum-house', 'Vadodara,Gujarat', '10:00 AM - 05:00 PM', 'Monday and public holidays', '2 hours', 'The Maharaja Fateh Singh Museum is a museum located in the city of Udaipur, Rajasthan, India. It is situated in the Fateh Prakash Palace, a former royal palace built in the 19th century. The museum showcases a collection of art and artifacts from the Mewar region, including paintings, sculptures, and decorative arts. The museum\'s collection includes works by renowned Indian artists, as well as European and Chinese art. It is a popular tourist destination and a significant cultural institution in India, offering a glimpse into the region\'s rich artistic and historical heritage.'),
('Kirti Mandir', 'Museum-house', 'Porbandar, Gujarat', '10:00 AM - 12:00 PM,3:00 PM - 06:30 PM', 'Opens Daily', '2 hours', 'The Kirti Mandir is a memorial dedicated to the birthplace of Mahatma Gandhi in Porbandar, Gujarat. It not only serves as a place to honor the life and legacy of Gandhi but also houses a museum that displays personal items, photographs, and manuscripts related to his life and work. The museum\'s exhibits focus on Gandhi\'s philosophy, his role in India\'s independence, and his impact on global civil rights movements. It is an important location for those studying history, peace studies, and the Indian independence movement.'),
('Government Museum', 'Archeology Museum', 'Chennai', '09:30 AM - 05:00 PM', 'Friday and public holidays', '3 hours', 'The Government Museum in Chennai is one of the oldest museums in India, offering an extensive collection that spans multiple disciplines. The museum\'s sections include archaeology, numismatics, sculpture, and art. It is particularly well-known for its rich collection of South Indian sculptures, ancient coins, and archaeological artifacts that trace the history of the region from ancient to modern times. Students of art history and archaeology frequently visit the museum for its rich historical and cultural resources.'),
('Archaeological Museum', 'Archeology Museum', 'Sarnath, Uttar Pradesh', '09:00 AM - 05:00 PM', 'Friday and public holidays', '2 hours', 'The Archaeological Museum in Sarnath is a significant museum located near the site where Lord Buddha gave his first sermon. It houses important Buddhist relics, sculptures, and artifacts that are central to understanding the Buddhist heritage of India. The museum\'s collection includes ancient statues, inscriptions, and artifacts that provide insight into the early development of Buddhism. For students of religious studies, archaeology, and history, the museum offers invaluable resources to explore the archaeological and cultural significance of Sarnath.'),
('Indian Museum of Archaeology', 'Archeology Museum', 'Kolkata,West Bengal', '10:00 AM - 5:00 PM', 'Monday and public holidays', '3 hours', 'The Indian Museum of Archaeology, located in Calcutta (now Kolkata), India, is one of the oldest and largest museums in Asia. Established in 1814, it houses a vast collection of artifacts from prehistoric times to the 19th century, including Indian, Chinese, and Egyptian antiquities. The museum\'s collection spans over 2,00,000 objects, including fossils, coins, sculptures, and paintings. It is a treasure trove of India\'s rich cultural and historical heritage, attracting visitors from around the world. The museum is also a hub for archaeological research and education.'),
('National Museum of Athropology', 'Archeology Museum', 'New Delhi', '10:00 AM - 5:00 PM', 'Monday and public holidays', '3 hours', 'The National Museum of Anthropology in Delhi is one of the premier institutions in India dedicated to the study of human cultures and societies. The museum\'s collection spans a wide range of anthropological themes, including ethnography, human evolution, and cultural diversity. It showcases artifacts from various indigenous communities across India, focusing on their social structures, rituals, and artistic expressions. The museum plays an essential role in the study of anthropology, particularly for students interested in human societies and cultural practices.');

INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description)
VALUES
('State Archaelogical Museum', 'Archeology Museum', 'Hyderabad,Telangana', '10:30 AM - 5:00 PM', 'Public Holidays', '2 hours', 'The State Archaeological Museum in Telangana is a premier institution dedicated to preserving and showcasing the state''s rich cultural heritage. Located in Hyderabad, the museum features an impressive collection of artifacts and exhibits that highlight the region''s history, art, and architecture. The museum''s collection includes ancient inscriptions, sculptures, coins, and other archaeological finds that date back to the pre-historic era. It also has a special gallery dedicated to the Nizams of Hyderabad, offering a glimpse into the region''s rich history and cultural heritage. The museum is a must-visit for history enthusiasts and culture lovers.'),
('Archaeological Museum', 'Archeology Museum', 'Goa', '10:00 AM - 5:00 PM', 'Monday and public holidays', '2 hours', 'The Archaeological Museum Goa, located in Old Goa, is a museum showcasing the state''s rich cultural and historical heritage. The museum houses a collection of artifacts and exhibits from the prehistoric era to the medieval period, including ancient pottery, coins, and sculptures. It also features a collection of rare and unique items such as ancient murals, jewelry, and temple idols. The museum''s exhibits provide valuable insights into the history and culture of Goa, making it a must-visit for history enthusiasts and tourists alike. It is a great place to learn about Goa''s past and its people.'),
('Government Museum', 'Archeology Museum', 'Banglore,Karnataka', '10:00 AM - 5:00 PM', 'Monday and public holidays', '2 hours', 'The Government Museum in Bangalore, officially known as the Chamarajendra Museum of Arts and Archaeology, is one of the oldest museums in the country. Established in 1875, it showcases a rich collection of over 50,000 artifacts, including ancient sculptures, inscriptions, coins, and art pieces. The museum has several galleries featuring exhibits on history, art, archaeology, and geology. Some of the notable exhibits include ancient artifacts from the Indus Valley Civilization, sculptures from the Chola and Hoysala dynasties, and a rare collection of Indian musical instruments.'),
('National Museum of Minerals', 'General', 'New Delhi', '10:00 AM - 5:00 PM', 'Monday and public holidays', '2 hours', 'The National Museum of Minerals in New Delhi is a specialized institution dedicated to the study and display of minerals, rocks, and fossils. It houses an extensive collection of mineral specimens from across India and around the world, providing a deep dive into the geological history of the Earth. The museum''s exhibits focus on the properties, classifications, and various uses of minerals, from their formation to their applications in modern industries such as construction, electronics, and energy.'),
('Rail Museum', 'General', 'Mysore,Karnataka', '9:30 AM - 5:30 PM', 'Public Holidays', '1 hour', 'The Rail Museum in Mysore is a popular tourist destination that showcases the history of Indian railways. Located on 35 acres of land, the museum features over 40 exhibits, including vintage locomotives and coaches. Visitors can explore the various galleries, which showcase the development of Indian railways from its inception to the present day. The museum also offers an interactive display, a railway gallery, and a vintage camera and model display. Additionally, it has a collection of steam engines, electric and diesel locomotives, and railway carriages. The museum is a must-visit for history buffs and railway enthusiasts.'),
('Kolkata Panorama', 'General', 'Kolkata,West Bengal', '11:00 AM - 6:00 PM', 'Monday and public holidays', '2 hours', 'The Kolkata Panorama is a visual representation of the history, culture, and architecture of the city of Kolkata. It offers a panoramic view of the city''s development over the years, highlighting significant landmarks, historical events, and cultural transformations. The museum''s collection includes models, photographs, and artifacts that reflect Kolkata’s rich heritage, both from the colonial and post-colonial eras. It serves as an important resource for those studying urban history, architecture, and the socio-political evolution of Kolkata. Visitors interested in understanding the growth of Kolkata as a cultural and historical center will find this museum fascinating.'),
('National museum of Indian cinema', 'General', 'Mumbai,Maharastra', '11:00 AM - 6:00 PM', 'Monday and public holidays', '2 hours', 'The National Museum of Indian Cinema is a museum located in Mumbai, India. It is a repository of Indian cinema''s rich history and heritage, showcasing a vast collection of films, artifacts, and memorabilia. The museum was established in 1990 by the National Film Archives of India and has since become a popular destination for film enthusiasts and historians. The museum''s collection includes films, costumes, props, and other exhibits that highlight the evolution of Indian cinema over the years. It is a must-visit destination for anyone interested in Indian film history.'),
('Manav Sangrahalaya', 'General', 'Madhya Pradesh', '10:00 AM - 5:00 PM', 'Public Holidays', '1 hour', 'The Manav Sangrahalaya, also known as the Museum of Man, is located in Indore and is dedicated to the anthropological and ethnological study of the human race. The museum''s collection spans the evolution of humans from prehistoric times to the modern era, with a focus on how human societies have developed, adapted, and evolved. Exhibits include prehistoric tools, tribal artifacts, and cultural displays from various ethnic groups. It provides valuable insights into the daily life, customs, and traditions of India’s diverse tribal and rural communities, making it an important resource for students of anthropology, history, and sociology.'),
('Kerala Museum', 'General', 'Ernakulam,Kerala', '9:30 AM - 5:00 PM', 'Public Holidays', '2 hours', 'The Kerala Museum in Kochi is a repository of the cultural and artistic history of Kerala. It focuses on the region’s diverse art forms, traditional crafts, and the cultural influences that have shaped Kerala''s history over centuries. The museum houses a rich collection of artifacts, including ancient sculptures, paintings, and jewelry, as well as displays on Kerala’s folklore and religious traditions. It is an ideal place for students of art, culture, and history to explore the rich cultural heritage of Kerala and understand the region''s unique artistic practices.'),
('Kumbharwada Museum', 'Arts', 'Mumbai', '10:00 AM - 6:00 PM', 'Monday', '1 hour', 'The Kumbharwada Museum is a cultural museum located in Mumbai, India. It is situated in the Kumbharwada area, which was once a thriving community of potters. The museum showcases the history and art of pottery-making, with a collection of pottery items, traditional artifacts, and exhibitions on the craft. Visitors can see demonstrations of pottery-making and learn about the techniques and tools used by the potters. The museum is a great place to learn about Indian culture and heritage, and to appreciate the skill and craftsmanship of traditional potters. It is a popular tourist destination in Mumbai.'),
('Rajiv Gandhi Musuem of Contemporary Art', 'Arts', 'New Delhi', '10:00 AM - 6:00 PM', 'Monday', '2 hours', 'The Rajiv Gandhi Museum of Contemporary Art, located in New Delhi, is a museum showcasing modern and contemporary Indian art. The museum features a diverse collection of artworks, including paintings, sculptures, and installations, highlighting the country''s rich cultural heritage. Its exhibits provide a platform for artists to showcase their work and for visitors to engage with the latest trends and innovations in Indian contemporary art.'),
('Raman Research Institute Museum', 'Science and Technology', 'Banglore', '9:00 AM - 5:00 PM', 'Sunday', '1 hour', 'The Raman Research Institute (RRI) Museum is a part of the Raman Research Institute, a premier research institute in India founded by Dr. C.V. Raman, the Nobel laureate. The museum showcases a collection of scientific instruments, equipment, and exhibits related to the work of Dr. Raman and other scientists. It provides an insight into the history of science and technology, particularly in the field of physics and materials science. The museum also hosts temporary exhibitions and interactive displays, making it a popular destination for science enthusiasts and students.'),
('Textiles&Art Museum', 'Arts', 'Surat', '10:00 AM - 6:00 PM', 'Monday', '2 hours', 'The Textiles and Art Museum is a unique museum showcasing a diverse collection of textiles, artifacts, and art from India and around the world. The museum features exhibits on various aspects of textiles, including weaving, printing, and embroidery, as well as a collection of sculptures, paintings, and other art forms. Its exhibits provide insights into the rich cultural heritage and artistic traditions of India and beyond.'),
('Army Museum', 'Historical Museums', 'Delhi', '9:00 AM - 5:00 PM', 'Opens Daily', '2 hours', 'The Army Museum, also known as the Indian Army Museum, is a military museum showcasing the history and heritage of the Indian Army. The museum features exhibits on the army''s role in India''s independence, its wars and operations, and its contributions to national security and humanitarian missions. Its collections include uniforms, medals, weapons, and equipment, as well as interactive displays and multimedia exhibits.');

INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description)
VALUES
('Gandhi Ashram', 'Historical Museums', 'Ahmedabad', '8:30 AM - 6:30 PM', 'Opens Daily', '1 hour', 'The Gandhi Ashram, located in Ahmedabad, Gujarat, is a museum and former ashram (residence) of Mahatma Gandhi, showcasing his life, philosophy, and legacy. The ashram, established in 1917, was a hub for India''s Freedom movement and features several exhibits, including Gandhi''s personal belongings, letters, and photographs. The ashram complex also includes a museum, library, and archives, providing insights into Gandhi''s life and India''s struggle for independence.'),
('Taj Museum', 'Historical Museums, Archeology, Arts', 'Agra', '10:00 AM - 5:00 PM', 'Friday', '4 hours', 'The Taj Museum, also known as the Taj Museum and Archives, is a museum located within the premises of the Taj Mahal in Agra, India. It showcases the history and construction of the iconic monument, with exhibits on its architecture, engineering, and the story behind its creation. The museum features models, photographs, and artifacts that provide a detailed understanding of the Taj Mahal''s design and significance. Visitors can gain a deeper appreciation for the monument''s beauty and historical importance by exploring the exhibits and displays at the Taj Museum.'),
('Indira Gandhi Rashtriya Manav Sangrahalaya', 'General, Historical Museums, Arts, Museum-House', 'Bhopal', '11:00 AM - 5:30 PM', 'Monday and public holidays', '5 hours', 'The Indira Gandhi Rashtriya Manav Sangrahalaya (IGRMS) is a museum located in Bhopal, Madhya Pradesh, India. It is also known as the National Museum of Mankind. The museum showcases the art, culture, and traditions of the indigenous people of India. It has a collection of over 3,000 objects, including artifacts, textiles, and photographs. The IGRMS is a popular tourist destination and an important institution for preserving and promoting the cultural heritage of India''s tribal communities. It is named after former Prime Minister Indira Gandhi, who played a key role in its establishment.'),
('Red Fort', 'Historical Museums', 'Delhi', '7:00 AM - 9:00 PM', 'Monday', '4 hours', 'The Red Fort Museum is a famous museum located in New Delhi, India. It was once the main residence of the Mughal Empire and is now a UNESCO World Heritage Site. The museum showcases the history and culture of India, with a collection of artifacts and exhibits that date back to the 17th century. Some of the notable exhibits include the Diwan-i-Khas, the Mumtaz Mahal, and the Pearl Mosque. The museum also features a collection of rare coins, arms, and armory. Visitors can explore the museum''s impressive collection and learn about India''s rich history and cultural heritage.'),
('Mysore Palace', 'Historical Museums', 'Mysore, Karnataka', '10:00 AM - 5:30 PM', 'Sundays', '3 hours', 'The Mysore Palace, officially known as Amba Vilas Palace, is a historic palace located in Mysore, Karnataka, India. Built in 1912, it is a blend of Hindu, Islamic, and Gothic styles of architecture. The palace features stunning stained glass windows, ornate carvings, and intricate mirror work. It is also home to a collection of paintings, artifacts, and artifacts from the Wodeyar dynasty, who ruled Mysore for over 500 years. The palace is a popular tourist destination and is considered one of the most beautiful palaces in India, attracting millions of visitors each year.');
INSERT INTO MuseumDetails (Name, Category, Location, Opening_hours, Holidays, Required_Time, Description)
VALUES
('Kiran Nadar Museum of Art', 'Arts', 'New Delhi', '10:30 AM - 6:30 PM', 'Mondays', '2 hours', 'The Kiran Nadar Museum of Art (KNMA) is a modern and contemporary art museum located in New Delhi, India. It was founded in 2010 by Kiran Nadar, a businesswoman and art collector. The museum showcases a diverse collection of over 4,000 works of art, featuring artists from across India, including modern masters like Nandalal Bose and F.N. Souza, as well as contemporary artists like Jagannath Panda and Sushanta Mandal. KNMA also hosts temporary exhibitions, artist talks, and educational programs to engage audiences with Indian art and culture.'),
('National Rail Museum', 'Science and Technology', 'New Delhi', '9:30 AM - 5:30 PM', 'Mondays', '2 hours', 'The National Rail Museum in New Delhi is a museum showcasing the history of rail transportation in India. Established in 1977, it is spread over 10 acres of land and features a collection of over 100 exhibits, including vintage locomotives, carriages, and railway equipment. The museum also offers a toy train ride, a garden, and a restaurant. Visitors can explore the museum''s collection, which includes the iconic Fairy Queen locomotive, built in 1855. The museum is a popular tourist destination and a great place to learn about India''s rich railway heritage. It is open daily from 9:30 AM to 5:00 PM.'),
('The Bombay Natural History Society (BNHS) Museum', 'Science and Technology', 'Mumbai', '10:00 AM - 6:00 PM', 'Mondays', '1 hour', 'The Bombay Natural History Society (BNHS) Museum is a natural history museum located in Mumbai, India. It was established in 1883 by the Bombay Natural History Society, a non-profit organization dedicated to the conservation of wildlife and natural resources. The museum showcases a vast collection of specimens, including mammals, birds, reptiles, amphibians, fish, and insects, as well as artifacts and exhibits on natural history, anthropology, and geology. The museum is a repository of India''s natural heritage and offers educational programs, research facilities, and public exhibitions. It is a must-visit destination for nature enthusiasts and scientists.'),
('Rumi Darwaza Museum', 'Historical Museum', 'Lucknow', '10:00 AM - 6:00 PM', 'Mondays', '1 hour', 'The Rumi Darwaza Museum is a 17th-century gateway located in Lucknow, India. It was built by Nawab Asaf-ud-Daula in 1784 and serves as a museum showcasing the history and architecture of the region. The name "Rumi Darwaza" translates to "Roman Gate" due to its resemblance to ancient Roman architecture. The museum features exhibits on the city''s history, culture, and Mughal era, making it a significant cultural and historical landmark in India. Visitors can explore the museum to gain insight into the rich heritage of Lucknow and its surrounding areas.'),
('Shankars International Dolls Museum', 'Arts', 'New Delhi', '10:00 AM - 6:00 PM', 'Mondays', '1 hour', 'The Shankar''s International Dolls Museum is a popular tourist destination located in New Delhi, India. It was founded by Dr. Shankar Dayal Sharma, a former President of India, and his wife. The museum showcases a vast collection of over 6,000 dolls from around the world, representing various cultures and traditions. The dolls are displayed in intricately designed settings, giving visitors a glimpse into the traditional attire and customs of different countries. The museum is a must-visit for children and adults alike, offering an educational and entertaining experience for all. It is open from 10 am to 5 pm daily.'),
('TATA Institute of Fundamental Research (TIFR) Museum', 'Science and Technology', 'Mumbai', '9:00 AM - 5:00 PM', 'Saturdays, Sundays', '1 hour', 'The TATA Institute of Fundamental Research (TIFR) Museum in Mumbai celebrates India''s scientific achievements and advancements, offering interactive displays, historic artifacts, and archival collections from pioneers like Dr. Homi Bhabha. Visitors can explore exhibits on quantum mechanics, astrophysics, particle physics, and India’s nuclear and space research programs. With workshops, guided tours, and hands-on exhibits, the museum provides an engaging experience for science enthusiasts, making it a must-visit destination for understanding India’s contributions to global science and technology.'),
('Raja Dinkar Kelkar Museum', 'Arts', 'Pune', '10:00 AM - 6:00 PM', 'Opens Daily', '1 hour', 'The Raja Dinkar Kelkar Museum is a museum located in Pune, India. It is named after its founder, Raja Dinkar Kelkar, a renowned Indian art collector and historian. The museum showcases a vast collection of Indian art, artifacts, and sculptures, with a focus on Marathi culture and history. The collection includes over 40,000 items, including pottery, jewelry, coins, and textiles. The museum is known for its unique and well-curated exhibits, making it a popular tourist destination in Pune. It is also a research center for Indian art and culture.');
use museum;
CREATE TABLE TicketPrices (
    museum_id INT NOT NULL,
    type VARCHAR(10) NOT NULL,
    adult_price VARCHAR(262) NOT NULL,
    children_price VARCHAR(255) NOT NULL,
    photography_fee VARCHAR(10) NOT NULL,
    student_fee VARCHAR(255) NOT NULL,
    PRIMARY KEY (museum_id, type),
    FOREIGN KEY (museum_id) REFERENCES MuseumDetails(id) ON DELETE CASCADE
);

ALTER TABLE TicketPrices
DROP COLUMN student_fee;

ALTER TABLE TicketPrices MODIFY COLUMN children_price VARCHAR(255) NULL;

ALTER TABLE TicketPrices MODIFY COLUMN photography_fee VARCHAR(255) NULL;

INSERT INTO TicketPrices (museum_id, type, adult_price, children_price, photography_fee)
VALUES
(1, 'Indian', '20', 'Free', 'Prohibited'),
(2, 'Indian', 'Free', 'Free', 'Free'),
(3, 'Indian', '20', 'Free', 'Free'),
(4, 'Indian', '20', '5', 'Free'),
(5, 'Indian', '50', '20', '50'),
(6, 'Indian', '100', '50', 'Free'),
(7, 'Indian', 'Free', 'Free', 'Free'),
(8, 'Indian', '50', 'Free', '200'),
(9, 'Indian', '10', 'Free', 'Free'),
(10, 'Indian', '150', '35', '200'),
(11, 'Indian', '75', '20', '50,100'),
(12, 'Indian', '20', 'Free', '50'),
(13, 'Indian', '250', '100', '200'),
(14, 'Indian', '55', 'Free', 'Free'),
(15, 'Indian', '10', 'Free', 'Free'),
(16, 'Indian', '300', '150', 'Free'),
(17, 'Indian', '120', '60', 'Free'),
(18, 'Indian', '95', '35', 'Free'),
(19, 'Indian', '70', '20', 'Free'),
(20, 'Indian', '70', '20', 'Free'),
(21, 'Indian', '150', '100', 'Free'),
(22, 'Indian', '50', '20', 'Free'),
(23, 'Indian', '50', '20', 'Free'),
(24, 'Indian', '30', '20', 'Free'),
(25, 'Indian', '50', '20', 'Free'),
(26, 'Indian', '40', '20', '20'),
(27, 'Indian', 'Science Centre Only: Individual: ?40,Organized School Groups: ?20,Special Schools: ?5 Entry + Planetarium: Individual: ?95,Organized School Groups: ?40,Special Schools: ?15 Entry + 3D Science Show:Individual: ?75,Organized School Groups: ?35,Special Schools: ?10', NULL, NULL),
(28, 'Indian', 'Free', 'Free', 'Free'),
(29, 'Indian', 'Free', 'Free', 'Free'),
(30, 'Indian', '50', '30', 'Free'),
(31, 'Indian', '?40 (Day), ?100 (Night)', '?20 (Day), ?100 (Night)', '50'),
(32, 'Indian', 'Free', 'Free', 'Free'),
(33, 'Indian', 'Free', 'Free', 'Free'),
(34, 'Indian', 'Free', 'Free', 'Free'),
(35, 'Indian', '15', '10', '200'),
(36, 'Indian', '5', 'Free', 'Free'),
(37, 'Indian', '50', '20', '50'),
(38, 'Indian', '20', '10', '20'),
(39, 'Indian', '15', '5', '20'),
(40, 'Indian', '10', '5', '20'),
(41, 'Indian', '10', '5', '20'),
(42, 'Indian', '20', '10', '20'),
(43, 'Indian', '10', '5', '20'),
(44, 'Indian', '50', '20', '50'),
(45, 'Indian', '20', '10', '20'),
(46, 'Indian', '10', '5', '20'),
(47, 'Indian', '20', '10', '20'),
(48, 'Indian', '50', '20', '10'),
(49, 'Indian', '50', '20', '25'),
(50, 'Indian', 'Free', 'Free', 'Free'),
(51, 'Indian', '30', '15', '25'),
(52, 'Indian', '20', '10', '25'),
(53, 'Indian', 'Free', 'Free', 'Free'),
(54, 'Indian', '50', 'Free', '200'),
(55, 'Indian', '50', 'Free', 'Free'),
(56, 'Indian', '70', '10', '25'),
(57, 'Indian', '50', '25', '200'),
(58, 'Indian', '50', 'Free', 'Free'),
(59, 'Indian', '50', '10', '25'),
(60, 'Indian', '20', '10', '10'),
(61, 'Indian', '20', '10', '10'),
(62, 'Indian', '20', '10', '25'),
(63, 'Indian', 'Free', 'Free', 'Free'),
(64, 'Indian', '20', '10', '25');

INSERT INTO TicketPrices (museum_id, type, adult_price, children_price, photography_fee)
VALUES
(1, 'Foreigner', '500', 'Free', 'Prohibited'),
(2, 'Foreigner', 'Free', 'Free', 'Free'),
(3, 'Foreigner', '20', 'Free', 'Free'),
(4, 'Foreigner', '20', '5', 'Free'),
(5, 'Foreigner', '500', '20', '50'),
(6, 'Foreigner', '100', '50', 'Free'),
(7, 'Foreigner', 'Free', 'Free', 'Free'),
(8, 'Foreigner', '500', 'Free', '200'),
(9, 'Foreigner', '250', 'Free', 'Free'),
(10, 'Foreigner', '700', '200', '200'),
(11, 'Foreigner', '500', '500', '50,100'),
(12, 'Foreigner', '650', 'Free', '50'),
(13, 'Foreigner', '250', '100', '200'),
(14, 'Foreigner', '55', 'Free', 'Free'),
(15, 'Foreigner', '100', 'Free', 'Free'),
(16, 'Foreigner', '500', '300', 'Free'),
(17, 'Foreigner', '250', '70', 'Free'),
(18, 'Foreigner', '95', '35', 'Free'),
(19, 'Foreigner', '70', '20', 'Free'),
(20, 'Foreigner', '70', '20', 'Free'),
(21, 'Foreigner', '150', '100', 'Free'),
(22, 'Foreigner', '50', '20', 'Free'),
(23, 'Foreigner', '50', '20', 'Free'),
(24, 'Foreigner', '30', '20', 'Free'),
(25, 'Foreigner', '50', '20', 'Free'),
(26, 'Foreigner', '100', '50', '50'),
(27, 'Foreigner', 'N/A', 'N/A', 'N/A'),
(28, 'Foreigner', 'Free', 'Free', 'Free'),
(29, 'Foreigner', 'Free', 'Free', 'Free'),
(30, 'Foreigner', '50', '30', 'Free'),
(31, 'Foreigner', '?300 (Day), ?100 (Night)', '?150 (Day), ?100 (Night)', '50'),
(32, 'Foreigner', 'Free', 'Free', 'Free'),
(33, 'Foreigner', 'Free', 'Free', 'Free'),
(34, 'Foreigner', 'Free', 'Free', 'Free'),
(35, 'Foreigner', '250', '125', '200'),
(36, 'Foreigner', '100', 'Free', 'Free'),
(37, 'Foreigner', '300', '150', '200'),
(38, 'Foreigner', '650', '350', '500'),
(39, 'Foreigner', '100', '50', '100'),
(40, 'Foreigner', '50', '25', '50'),
(41, 'Foreigner', '10', '25', '50'),
(42, 'Foreigner', '100', '50', '100'),
(43, 'Foreigner', '50', '25', '50'),
(44, 'Foreigner', '200', '100', '150'),
(45, 'Foreigner', '100', '50', '100'),
(46, 'Foreigner', '50', '25', '50'),
(47, 'Foreigner', '100', '50', '100'),
(48, 'Foreigner', '100', '50', '50'),
(49, 'Foreigner', '100', '50', '50'),
(50, 'Foreigner', 'Free', 'Free', 'Free'),
(51, 'Foreigner', '100', '50', '50'),
(52, 'Foreigner', '100', '50', '50'),
(53, 'Foreigner', 'Free', 'Free', 'Free'),
(54, 'Foreigner', '1100', 'Free', '200'),
(55, 'Foreigner', '50', 'Free', 'Free'),
(56, 'Foreigner', '1200', '10', '25'),
(57, 'Foreigner', '500', '250', '200'),
(58, 'Foreigner', '200', 'Free', 'Free'),
(59, 'Foreigner', '200', '50', '50'),
(60, 'Foreigner', '100', '50', '50'),
(61, 'Foreigner', '100', '50', '50'),
(62, 'Foreigner', '50', '25', '50'),
(63, 'Foreigner', 'Free', 'Free', 'Free'),
(64, 'Foreigner', '50', '25', '50');

select * from ticketprices;

ALTER TABLE ticketprices 
ADD COLUMN student_fee VARCHAR(255);

ALTER TABLE ticketprices 
MODIFY COLUMN student_fee VARCHAR(255) DEFAULT 'Free';

SET SQL_SAFE_UPDATES = 0;

UPDATE ticketprices
SET student_fee = '35'
WHERE Museum_ID IN (10,18);

UPDATE ticketprices
SET student_fee = '100'
WHERE Museum_ID IN (13,21);

UPDATE ticketprices
SET student_fee = '200'
WHERE Museum_ID IN (16);

UPDATE ticketprices
SET student_fee = '50'
WHERE Museum_ID IN (17,58);

UPDATE ticketprices
SET student_fee = '20'
WHERE Museum_ID IN (19,20,22,23,24,25,27,30,37,44,48,49,54);

UPDATE ticketprices
SET student_fee = '10'
WHERE Museum_ID IN (26,38,42,45,47,52,56,60,61,62,64);

UPDATE ticketprices
SET student_fee = '5'
WHERE Museum_ID IN (35,39,40,41,43,46);

UPDATE ticketprices
SET student_fee = '15'
WHERE Museum_ID IN (51);

UPDATE ticketprices
SET student_fee = '25'
WHERE Museum_ID IN (55,59);

UPDATE ticketprices
SET student_fee = '30'
WHERE Museum_ID IN (57);

UPDATE ticketprices
SET student_fee = 'Free'
WHERE Museum_ID IN (1,2,3,4,5,6,7,8,9,11,12,14,15,28,29,31,32,33,34,36,50,53,63);

SET SQL_SAFE_UPDATES = 1;

select * from museumdetails;
select * from ticketprices;
select * from ticket_price;

select * from ticket_booking;